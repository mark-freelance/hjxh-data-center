import logging
import os,re,sys,shutil
import numpy as np
import cv2
import pandas as pd
import json
import psutil
import time
import pyautogui
import pygetwindow as pw
from custom_exception import MyException
from wxwork_locator import WxworkLocator
from wxwork_exam_detail import ExamDetail
from utils import *
from cv import calc_center, capture_screen

class WxworkDriver:
    def __init__(self) -> None:
        self.locator = WxworkLocator()

    # 检查企业微信进程存在
    def check_wxwork_exist(self):
        pids = psutil.pids()
        for pid in pids:
            p = psutil.Process(pid)
            if p.name().lower() == 'wxwork.exe':
                return (True, p)
        else:
            return (False, None)
    
    # 切换到审批单界面
    def switch_to_exam_list_page(self, switch_mode):
        if switch_mode == 1:
            self.switch_to_exam_list_page_mode1()
        elif switch_mode == 2:
            self.switch_to_exam_list_page_mode2()
        else:
            raise MyException(f"不支持的切换模式:{switch_mode}")

    # 切换到审批单界面
    def switch_to_exam_list_page_mode1(self):
        # 显示企业微信主界面
        self.show_wxwork_gui()
        time.sleep(0.3*2)

        # 切换到工作台界面
        self.switch_to_workbenck(timeout=5.0)
        time.sleep(0.3*2)

        # 切换到审批界面
        self.switch_to_exam(timeout=5.0)
        time.sleep(0.3*2)

        # 切换到"我审批的"界面
        self.switch_to_exam_tabmy(timeout=5.0)
        time.sleep(0.3*2)

        # 切换到"抄送我的"界面
        self.switch_to_exam_tabmy_copy(timeout=5.0)
        time.sleep(0.3*2)

        if False:
            # 设定"提交时间"
            try:
                self.click_submit_date(timeout=5.0)
            except MyException:
                pass
            time.sleep(0.3*2)

            # 选择近7日
            try:
                self.click_7days(timeout=5.0)
            except MyException:
                pass
    
    # 切换到审批单界面
    def switch_to_exam_list_page_mode2(self):
        # 显示企业微信主界面
        self.show_wxwork_gui()
        time.sleep(0.3*2)

        begin = time.time()
        while time.time() - begin < 3.0:
            wxwork_windows = pw.getWindowsWithTitle('企业微信')
            assert len(wxwork_windows) == 1
            w = wxwork_windows[0]
            if w.isActive:
                break
            else:
                logging.info('当前企业微信窗口不在最前面')
                time.sleep(0.3)
        else:
            raise MyException(f"窗口不显示在最前")
    
    # 移动到企业微信右上角
    def move_mouse_to_top_right(self):
        wxwork_windows = pw.getWindowsWithTitle('企业微信')
        assert len(wxwork_windows) == 1
        wxwork_window = wxwork_windows[0]
        window_w, window_h = wxwork_window.size

        pyautogui.moveTo(wxwork_window.left+window_w-100, wxwork_window.top+160)


    # 显示企业微信主界面
    def show_wxwork_gui(self):
        xywhs = [x[0] for x in self.locator.locate(['statusbar-wxwork']) if x[1] == 'statusbar-wxwork']
        if xywhs:
            if len(xywhs) != 1:
                raise MyException(f"找到多个企业微信图标, {len(xywhs)}")
            else:
                pos_status = calc_center(xywhs[0])
                pyautogui.moveTo(pos_status[0], pos_status[1], duration=getHumanDuration(pos_status), tween=pyautogui.easeOutQuad)
                pyautogui.doubleClick()
        else:
            pids = psutil.pids
            for pid in pids():
                p = psutil.Process(pid)
                if p.name().lower() == 'wxwork.exe':
                    wxwork_path = p.exe()
                    logging.info(f"启动微信进程:{wxwork_path}")
                    ret = os.system(f'"{wxwork_path}"')
                    if ret:
                        raise MyException("启动微信进程失败")
                    break
            else:
                raise MyException("找不到微信进程")

    # 切换到工作台界面
    def switch_to_workbenck(self, timeout):
        self.move_mouse_to_top_right()

        begin = time.time()
        while time.time() - begin <= timeout:
            xywhs = self.locator.locate(['wxwork-workbench'])
            xywhs_done = [x[0] for x in xywhs if x[1] == 'wxwork-workbench-1']
            xywhs_pending = [x[0] for x in xywhs if x[1] == 'wxwork-workbench-0']

            if xywhs_done:
                logging.info("已切换到工作台")
                break
            elif xywhs_pending:
                pos_workbench = calc_center(xywhs_pending[0])
                pyautogui.moveTo(pos_workbench[0], pos_workbench[1], duration=getHumanDuration(pos_workbench), tween=pyautogui.easeOutQuad)
                pyautogui.click()
                time.sleep(0.3*2)
                self.move_mouse_to_top_right()
            else:
                time.sleep(0.3)
        else:
            raise MyException("找不到企业微信工作台")
        
    # 切换到审批界面
    def switch_to_exam(self, timeout):
        self.move_mouse_to_top_right()

        begin = time.time()
        while time.time() - begin <= timeout:
            xywhs = self.locator.locate(['wxwork-workbench-examine', 'wxwork-workbench-examine-tabmy'])
            xywhs_done = [x[0] for x in xywhs if x[1].startswith('wxwork-workbench-examine-tabmy')]
            xywhs_pending = [x[0] for x in xywhs if x[1] == 'wxwork-workbench-examine']

            if xywhs_done:
                logging.info("已切换到审批页")
                break
            elif xywhs_pending:
                pos_exam = calc_center(xywhs_pending[0])
                pyautogui.moveTo(pos_exam[0], pos_exam[1], duration=getHumanDuration(pos_exam), tween=pyautogui.easeOutQuad)
                pyautogui.click()
                time.sleep(0.3*2)
                self.move_mouse_to_top_right()
            else:
                time.sleep(0.3)
        else:
            raise MyException("找不到审批页")

    # 切换到"我审批的"界面
    def switch_to_exam_tabmy(self, timeout):
        self.move_mouse_to_top_right()

        begin = time.time()
        while time.time() - begin <= timeout:
            xywhs = self.locator.locate(['wxwork-workbench-examine-tabmy'])
            xywhs_done = [x[0] for x in xywhs if x[1] =='wxwork-workbench-examine-tabmy-1']
            xywhs_pending = [x[0] for x in xywhs if x[1] == 'wxwork-workbench-examine-tabmy-0']

            if xywhs_done:
                logging.info("已切换到 我审批的")
                break
            elif xywhs_pending:
                pos_tabmy = calc_center(xywhs_pending[0])
                pyautogui.moveTo(pos_tabmy[0], pos_tabmy[1], duration=getHumanDuration(pos_tabmy), tween=pyautogui.easeOutQuad)
                pyautogui.click()
                time.sleep(0.3*2)
                self.move_mouse_to_top_right()
            else:
                time.sleep(0.3)
        else:
            raise MyException("找不到 我审批的")

    # 切换到"抄送我的"界面
    def switch_to_exam_tabmy_copy(self, timeout):
        self.move_mouse_to_top_right()

        begin = time.time()
        while time.time() - begin <= timeout:
            xywhs = self.locator.locate(['wxwork-workbench-examine-tabmy-copy'])
            xywhs_done = [x[0] for x in xywhs if x[1] =='wxwork-workbench-examine-tabmy-copy-1']
            xywhs_pending = [x[0] for x in xywhs if x[1] == 'wxwork-workbench-examine-tabmy-copy-0']

            if xywhs_done:
                logging.info("已切换到 抄送我的")
                break
            elif xywhs_pending:
                pos_tabmy_copy = calc_center(xywhs_pending[0])
                pyautogui.moveTo(pos_tabmy_copy[0], pos_tabmy_copy[1], duration=getHumanDuration(pos_tabmy_copy), tween=pyautogui.easeOutQuad)
                pyautogui.click()
                time.sleep(0.3*2)
                self.move_mouse_to_top_right()
            else:
                time.sleep(0.3)
        else:
            raise MyException("找不到 抄送我的")

    # 设定"提交时间"
    def click_submit_date(self, timeout):
        self.move_mouse_to_top_right()

        begin = time.time()
        while time.time() - begin <= timeout:
            xywhs = self.locator.locate(['wxwork-workbench-examine-tabmy-copy-datePicker'])
            xywhs_done = [x[0] for x in xywhs if x[1] =='wxwork-workbench-examine-tabmy-copy-datePicker']

            if xywhs_done:
                logging.info("已找到 提交时间")
                pos_submit_date = calc_center(xywhs_done[0])
                pyautogui.moveTo(pos_submit_date[0], pos_submit_date[1], duration=getHumanDuration(pos_submit_date), tween=pyautogui.easeOutQuad)
                pyautogui.click()
                time.sleep(0.3*2)
                self.move_mouse_to_top_right()
            else:
                time.sleep(0.3)
        else:
            raise MyException("找不到 提交时间")
    
    # 选择近7日
    def click_7days(self, timeout):
        self.move_mouse_to_top_right()

        begin = time.time()
        while time.time() - begin <= timeout:
            xywhs = self.locator.locate(['wxwork-workbench-examine-tabmy-copy-datePicker-7days'])
            xywhs_done = [x[0] for x in xywhs if x[1] =='wxwork-workbench-examine-tabmy-copy-datePicker-7days']

            if xywhs_done:
                logging.info("已找到 近7日")
                pos_7day = calc_center(xywhs_done[0])
                pyautogui.moveTo(pos_7day[0], pos_7day[1], duration=getHumanDuration(pos_7day), tween=pyautogui.easeOutQuad)
                pyautogui.click()
                time.sleep(0.3*2)
                self.move_mouse_to_top_right()
            else:
                time.sleep(0.3)
        else:
            raise MyException("找不到 近7日")

    # 翻页抓取数据
    def extract_page_content(self, begin_date, begin_time):
        # 鼠标移动到右上角并单击
        self.move_mouse_to_top_right()
        time.sleep(0.3*2)
        pyautogui.click()

        wxwork_windows = pw.getWindowsWithTitle('企业微信')
        assert len(wxwork_windows) == 1
        wxwork_window = wxwork_windows[0]

        # 滚动扫审批单
        prev_image_wxwork = None
        prev_bottom_xywh = None

        exam_detail = ExamDetail(self.locator, begin_date, begin_time)
        for _ in range(100):
            pyautogui.click()
            pyautogui.press('down')
            time.sleep(0.2)

            # 在内容发生变化 或者 首次 的情况下才往下走
            begin = time.time()
            content_changed = True
            while time.time() - begin <= 5.0:
                image_screen = capture_screen()
                x,y = wxwork_window.left, wxwork_window.top
                w,h = wxwork_window.size
                image_wxwork = image_screen[y:y+h, max(x, 0):x+w, :]
                if prev_image_wxwork is None:
                    prev_image_wxwork = image_wxwork.copy()
                    break
                else:
                    if np.array_equal(prev_image_wxwork, image_wxwork):
                        time.sleep(0.2)
                        continue
                    else:
                        prev_image_wxwork = image_wxwork.copy()    
                        break
            else:
                content_changed = False
            
            if not content_changed:
                break

            # 等待“已通过”，等待5秒
            self.move_mouse_to_top_right()
            begin = time.time()
            pass_detected = False
            no_more_exams = False
            while time.time() - begin <= 5.0:
                xywhs = self.locator.locate(['wxwork-workbench-examine-tabmy-copy-pass'])
                xywhs_pending = [x[0] for x in xywhs if x[1] =='wxwork-workbench-examine-tabmy-copy-pass']

                logging.info(str(xywhs))
                logging.info(str(xywhs_pending))
                
                if xywhs_pending:
                    current_bottom_xywh = xywhs_pending[-1]
                    pass_detected = True

                    if prev_bottom_xywh is None:
                        # 扫所有
                        no_more_exams = exam_detail.scan(xywhs_pending)
                        if no_more_exams:
                            logging.info('no_more_exams')
                            break
                        time.sleep(0.3*2)
                    else:
                        if current_bottom_xywh[1] > prev_bottom_xywh[1] + 2:
                            # 扫最后一行
                            no_more_exams = exam_detail.scan([xywhs_pending[-1], ])
                            if no_more_exams:
                                logging.info('no_more_exams')
                                break
                            time.sleep(0.3*2)
                    prev_bottom_xywh = current_bottom_xywh
                    
                    break
                else:
                    logging.warning('没有找到待处理的审批单')
                    time.sleep(0.3*2)
            
            if no_more_exams:
                logging.info("没有更多的审批单")
                break
            
            if not pass_detected:
                logging.warning('没有找到待处理的审批单')
                break

        self.df_parsed_succ = pd.read_json(json.dumps(exam_detail.parsed_exams, ensure_ascii=False), orient='records')
        self.msgs_parsed_fail = exam_detail.failed_exams

    # 保存报表
    def save_report(self):
        str_now = get_now_str()
        os.makedirs('results', exist_ok=True)

        path_succ = f'results/wxwork_解析正常_{str_now}.xlsx'
        path_fail = f'results/wxwork_解析异常_{str_now}.txt'

        df = self.df_parsed_succ.astype('str')
        df.to_excel(path_succ, index=False)

        with open(path_fail, 'w') as f:
            f.write('\n'.join(self.msgs_parsed_fail))
        
        return (path_succ, path_fail)

    # 关闭窗口
    def close_windows(self):
        wxwork_windows = pw.getWindowsWithTitle('企业微信')
        for w in wxwork_windows:
            w.close()
