'''
通用类
'''
import os
import logging
import logging.handlers
import datetime
import uuid
import pyautogui
import math
import pickle

def get_now_str():
    datetime_now = datetime.datetime.now()
    return '%02d%02d%02d_%02d%02d%02d.%03d' % (datetime_now.year,
                                               datetime_now.month,
                                               datetime_now.day,
                                               datetime_now.hour,
                                               datetime_now.minute,
                                               datetime_now.second,
                                               datetime_now.microsecond * 0.001)

def save_debug_data(dir_log, data):
    os.makedirs(dir_log, exist_ok=True)

    file_pkl = f'{get_now_str()}.{str(uuid.uuid1())}.pkl'
    with open(os.path.join(dir_log, file_pkl), 'wb') as f:
        f.write(pickle.dumps(data))
    return file_pkl

def getHumanDuration(next_pos):
    currentX, currentY = pyautogui.position()
    distance = math.sqrt(pow(currentX - next_pos[0], 2) + pow(currentY - next_pos[1], 2))
    duration = max(distance*0.001*0.6, 0.2)
    return duration

def init_logs():
    FORMAT = r'[%(asctime)s][%(levelname)s][%(filename)s][%(funcName)s][%(lineno)s] %(message)s'
    logging.basicConfig(format=FORMAT, level=logging.INFO)
    os.makedirs('log', exist_ok=True)

    fh = logging.handlers.TimedRotatingFileHandler(f"log/wxwork_rpa_{get_now_str()}.log",
                                                   encoding='utf-8',
                                                   when='D',
                                                   backupCount=30)
    fh.setFormatter(logging.Formatter(FORMAT))
    logging.getLogger().addHandler(fh)

    logging.getLogger('tornado.access').disabled = True
