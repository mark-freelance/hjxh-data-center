import os,re,sys,shutil
import numpy as np
import cv2
from cv import *

from config import gConfig


LOCATE_TYPES = ('statusbar-wxwork', # 状态栏图标
    'wxwork-workbench', # 工作台（选中/未选中）
    'wxwork-workbench-examine', # 工作台--审批图标
    'wxwork-workbench-examine-tabmy', # 工作台--审批--我审批的（选中/未选中）
    'wxwork-workbench-examine-tabmy-copy', # 工作台--审批--我审批的--抄送我的（选中/未选中）
    'wxwork-workbench-examine-tabmy-copy-datePicker', # 工作台--审批--我审批的--抄送我的--提交日期
    'wxwork-workbench-examine-tabmy-copy-datePicker-7days', # 工作台--审批--我审批的--抄送我的--提交日期--近7日
    'wxwork-workbench-examine-tabmy-copy-pass', # 工作台--审批--我审批的--抄送我的--已通过
    'wxwork-exam-detail' # 审批单--单据详情
    )

class WxworkLocator():
    def locate(self, _types):
        for _type in _types:
            if _type not in LOCATE_TYPES:
                raise ValueError(f"错误的定位类型:{_type}")
            
        gray_desktop = capture_screen(gray=True)
        xywhs = []
        for _type in _types:
            if _type == 'statusbar-wxwork':
                xywhs += self.locate_statusbar_wxwork(gray_desktop)
            elif _type == 'wxwork-workbench':
                xywhs += self.locate_workbench(gray_desktop)
            elif _type == 'wxwork-workbench-examine':
                xywhs += self.locate_workbench_examine(gray_desktop)
            elif _type == 'wxwork-workbench-examine-tabmy':
                xywhs += self.locate_workbench_examine_tabmy(gray_desktop)
            elif _type == 'wxwork-workbench-examine-tabmy-copy':
                xywhs += self.locate_workbench_examine_tabmy_copy(gray_desktop)
            elif _type == 'wxwork-workbench-examine-tabmy-copy-datePicker':
                xywhs += self.locate_workbench_examine_tabmy_copy_datePicker(gray_desktop)
            elif _type == 'wxwork-workbench-examine-tabmy-copy-datePicker-7days':
                xywhs += self.locate_workbench_examine_tabmy_copy_datePicker_7days(gray_desktop)
            elif _type == 'wxwork-workbench-examine-tabmy-copy-pass':
                xywhs += self.locate_workbench_examine_tabmy_copy_pass(gray_desktop)
            elif _type == 'wxwork-exam-detail':
                xywhs += self.locate_exam_detail(gray_desktop)
            else:
                raise ValueError(f"错误的定位类型:{_type}")
        return xywhs
    
    # 状态栏图标
    def locate_statusbar_wxwork(self, gray_dekstop):
        xywhs = []
        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_STATUSBAR_WXWORK), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'statusbar-wxwork'))
        return xywhs
    
    # 工作台（选中/未选中）
    def locate_workbench(self, gray_dekstop):
        xywhs = []
        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_1), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-1'))

        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_0), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-0'))

        return xywhs
    
    # 工作台--审批图标
    def locate_workbench_examine(self, gray_dekstop):
        xywhs = []
        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_EXAMINE), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-examine'))

        return xywhs

    # 工作台--审批--我审批的（选中/未选中）
    def locate_workbench_examine_tabmy(self, gray_dekstop):
        xywhs = []
        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_1), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-examine-tabmy-1'))

        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_0), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-examine-tabmy-0'))

        return xywhs
    
    # 工作台--审批--我审批的--抄送我的（选中/未选中）
    def locate_workbench_examine_tabmy_copy(self, gray_dekstop):
        xywhs = []
        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_1), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-examine-tabmy-copy-1'))

        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_0), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-examine-tabmy-copy-0'))

        return xywhs
    
    # 工作台--审批--我审批的--抄送我的--提交日期
    def locate_workbench_examine_tabmy_copy_datePicker(self, gray_dekstop):
        xywhs = []
        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_DATEPICKER), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-examine-tabmy-copy-datePicker'))
        return xywhs
    
    # 工作台--审批--我审批的--抄送我的--提交日期--近7日
    def locate_workbench_examine_tabmy_copy_datePicker_7days(self, gray_dekstop):
        xywhs = []
        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_DATEPICKER_7DAYS), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-examine-tabmy-copy-datePicker-7days'))
        return xywhs
    
    # 工作台--审批--我审批的--抄送我的--已通过
    def locate_workbench_examine_tabmy_copy_pass(self, gray_dekstop):
        xywhs = []
        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_PASS), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-workbench-examine-tabmy-copy-pass'))
        return xywhs
    
    # 审批单--单据详情
    def locate_exam_detail(self, gray_dekstop):
        xywhs = []
        template = cv2.imread(os.path.join(gConfig.DIR_TEMPLATE, gConfig.FILE_WXWORK_EXAM_DETAIL), -1)
        for xywh in match_template(gray_dekstop, template):
            xywhs.append((xywh, 'wxwork-exam-detail'))
        return xywhs
