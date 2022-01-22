import sys
sys.path.append('py39.zip')

import os,re,shutil
import argparse
import logging
import psutil
import time
from config import gConfig, load_config
from custom_exception import MyException
from utils import *
from wxwork_driver import WxworkDriver

def run(file_config:str, begin_date:str, begin_time: str):
    gConfig = load_config(file_config)

    logging.info(f'页面跳转模式:{gConfig.SWITCH_MODE}')

    try:
        driver = WxworkDriver()

        # 检查企业微信进程存在
        is_exist, process = driver.check_wxwork_exist()
        if not is_exist:
            logging.error("未检测企业微信")
            raise MyException("未检测到企业微信")
        
        # 切换到审批单页
        driver.switch_to_exam_list_page(gConfig.SWITCH_MODE)

        # 翻页抓取数据
        time.sleep(0.3*5)
        driver.extract_page_content(begin_date, begin_time)

        # 保存报表
        path_succ, path_fail = driver.save_report()
        logging.info(f'path_succ:{path_succ}')
        logging.info(f'path_fail:{path_fail}')

        # 关闭窗口
        driver.close_windows()
        
    except MyException as e:
        logging.exception(e)
        logging.error("捕获到自定义异常", exc_info=True)
    except Exception as e:
        logging.exception(e)
        logging.error("捕获到异常", exc_info=True)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--config', dest='file_config', type=str,
                        default='config.yaml', help='配置文件路径')
    parser.add_argument('--begin-date', dest='begin_date', type=str,
                        default='2022-01-08', help='开始日期，例如:2021-11-06')
    parser.add_argument('--begin-time', dest='begin_time', type=str,
                        default='16:00', help='开始时间，例如:16:00')
    args = parser.parse_args()                    

    init_logs()
    logging.info('------------------log-----------------------')
    logging.info('配置文件路径:' + args.file_config)
    logging.info('开始日期:' + args.begin_date)
    logging.info('开始时间:' + args.begin_time)
    run(args.file_config,
        args.begin_date,
        args.begin_time)

if __name__ == '__main__':
    main()
