'''
系统配置
'''
from easydict import EasyDict as edict
import yaml

gConfig = edict()
gConfig.SWITCH_MODE = 0
gConfig.DIR_TEMPLATE = ""
gConfig.FILE_STATUSBAR_WXWORK = ""
gConfig.FILE_WXWORK_WORKBENCH_1 = ""
gConfig.FILE_WXWORK_WORKBENCH_0 = ""
gConfig.FILE_WXWORK_WORKBENCH_EXAMINE = ""
gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_1 = ""
gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_0 = ""
gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_1 = ""
gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_0 = ""
gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_DATEPICKER = ""
gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_DATEPICKER_7DAYS = ""
gConfig.FILE_WXWORK_WORKBENCH_EXAMINE_TABMY_COPY_PASS = ""
gConfig.FILE_WXWORK_EXAM_DETAIL = ""

#####################################################
def load_config(file_config='config.yaml'):
    global gConfig
    with open(file_config, 'r', encoding='utf-8') as f:
        config = yaml.safe_load(f.read())
        for k, v in config.items():
            gConfig[k] = v
    return gConfig
