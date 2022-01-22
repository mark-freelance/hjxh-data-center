import os,re,sys,shutil
import pyautogui
import datetime
import pygetwindow as pw
import pyperclip
import random
import logging
import time
import pandas as pd
from io import StringIO
from cv import calc_center
from utils import getHumanDuration

class ExamDetail:
    def __init__(self, locator, begin_date, begin_time) -> None:
        self.locator = locator
        self.begin_date = begin_date
        self.begin_time = begin_time
        self.parsed_exams = []
        self.failed_exams = []
    
    def check_date(self, copy_datetime): # copy_datetime: 1/10 16:52
        logging.info(f'copy_datetime:{copy_datetime}')
        d1 = datetime.date(*map(int, self.begin_date.split('-')))

        copy_data = '2022-' + copy_datetime.split(' ')[0].replace('/', '-')
        if ':' in copy_data:
            return True
        logging.info(f'copy_data2:{copy_data}')
        d2 = datetime.date(*map(int, copy_data.split('-')))
        if (d2 - d1).days > 0:
            return True
        elif (d2 - d1).days == 0:
            copy_time = copy_datetime.split(' ')[-1]
            copy_time_in_minute = int(copy_time.split(':')[0])*60 + int(copy_time.split(':')[1])
            begin_time_in_minute = int(self.begin_time.split(':')[0])*60 + int(self.begin_time.split(':')[1])
            if copy_time_in_minute >= begin_time_in_minute:
                return True
            else:
                return False
        else:
            return False

    def check_title(self, sio):
        s = sio.read()
        sio.seek(0)
        title = s.split()[0]
        if '的线下销售报价单' in title:
            logging.info("不处理线下销售报价单")
            return False
        if '的美粮坊事业部样品申请' in title:
            logging.info("不处理美粮坊事业部样品申请")
            return False
        if '的牧老板样品申请' in title:
            logging.info("不处理牧老板样品申请")
            return False
        return True

    def parse_sio(self, sio):
        if not self.check_title(sio):
            return False, None

        df = pd.read_csv(sio, header=None)
        ret = dict()
        # 姓名
        ret['姓名'] = re.findall(r'^[^的]+', df.iloc[0,0])[0]
        # 审批编号
        line = df[df[0].str.match('^审批编号')].iloc[0,0]
        ret['审批编号'] = '\t'.join(line.split('\t')[1:])
        # 报销事由
        line = df[df[0].str.match('^报销事由')].iloc[0,0]
        ret['报销事由'] = '\t'.join(line.split('\t')[1:])
        # （无发票）私卡支付金额
        line = df[df[0].str.match('^（无发票）私卡支付金额')].iloc[0,0]
        ret['无发票私卡支付金额'] = '\t'.join(line.split('\t')[1:])
        # （有发票-苗王贡）公卡支付金额
        line = df[df[0].str.match('^（有发票-苗王贡）公卡支付金额')].iloc[0,0]
        ret['（有发票-苗王贡）公卡支付金额'] = '\t'.join(line.split('\t')[1:])
        # （有发票-牧老板）公卡支付金额
        line = df[df[0].str.match('^（有发票-牧老板）公卡支付金额')].iloc[0,0]
        ret['（有发票-牧老板）公卡支付金额'] = '\t'.join(line.split('\t')[1:])
        # （有发票-湘臣）公卡支付金额
        line = df[df[0].str.match('^（有发票-湘臣）公卡支付金额')].iloc[0,0]
        ret['（有发票-湘臣）公卡支付金额'] = '\t'.join(line.split('\t')[1:])
        # 收款人全称
        line = df[df[0].str.match('^收款人全称')].iloc[0,0]
        ret['收款人全称'] = '\t'.join(line.split('\t')[1:])
        # 银行账号
        line = df[df[0].str.match('^银行账号')].iloc[0,0]
        ret['银行账号'] = '\t'.join(line.split('\t')[1:])
        # 开户行
        line = df[df[0].str.match('^开户行')].iloc[0,0]
        ret['开户行'] = '\t'.join(line.split('\t')[1:])
        # 备注说明
        line = df[df[0].str.match('^备注说明')].iloc[0,0]
        ret['备注说明'] = '\t'.join(line.split('\t')[1:])
        # 抄送时间
        line = df.iloc[df[df[0].str.match('^已抄送$')].index[0]+1, 0]
        ret['抄送时间'] = line
        return True, ret
    
    def scan(self, xywhs):
        wxwork_windows = pw.getWindowsWithTitle('企业微信')
        saved_mouse_pos = pyautogui.position()

        no_more_exams = False

        for xywh in xywhs:
            x,y,w,h = xywh
            pos_exam = (x+w//2 + random.randint(-150, 150), y+h//2)
            pyautogui.moveTo(pos_exam[0], pos_exam[1], duration=getHumanDuration(pos_exam), tween=pyautogui.easeOutQuad)
            pyautogui.click()

            begin = time.time()
            while time.time() - begin <= 8.0: # 最多等8秒
                # 定位到单据详情
                xywhs_exam_detail = self.locator.locate(['wxwork-exam-detail'])
                xywhs_pending = [x[0] for x in xywhs_exam_detail if x[1] =='wxwork-exam-detail']
                if xywhs_pending:
                    break
                else:
                    time.sleep(0.3*1)

            if len(xywhs_pending) != 1:
                continue
            xywh_pending = xywhs_pending[0]
            pos_detail = calc_center(xywh_pending)
            pyautogui.moveTo(pos_detail[0]+random.randint(0, 100), pos_detail[1]+random.randint(0, 100), duration=getHumanDuration(pos_detail), tween=pyautogui.easeOutQuad)
            pyautogui.click()

            time.sleep(0.5) # 此处需要小心

            # 拷贝单据详情
            pyautogui.hotkey('ctrl', 'a')
            pyautogui.hotkey('ctrl', 'c')

            exam_detail_content = pyperclip.paste()

            # 关闭单据窗口
            for w in pw.getWindowsWithTitle('企业微信'):
                if w not in wxwork_windows:
                    w.close()

            sio = StringIO(exam_detail_content)

            try:
                is_succ, parsed_exam = self.parse_sio(sio)
                if is_succ:
                    copy_datetime = parsed_exam['抄送时间']
                    if self.check_date(copy_datetime):
                        self.parsed_exams.append(parsed_exam)
                        no_more_exams = False
                    else:
                        no_more_exams = True
                        break
            except:
                splited_lines = exam_detail_content.split()
                examNo = ''
                for i, l in enumerate(splited_lines):
                    if '审批编号' == l:
                        examNo = splited_lines[i+1]
                        break
                error_msg = f'解析异常，审批单标题:【{splited_lines[0]}】，审批单号:【{examNo}】'
                self.failed_exams.append(error_msg)
                logging.error('解析错误', exc_info=True)
        pyautogui.moveTo(saved_mouse_pos)
        return no_more_exams 