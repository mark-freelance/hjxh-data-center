import numpy as np
import cv2
from PIL import ImageGrab

# 屏幕捕获
def capture_screen(bbox=(0,0,1920,1080), gray=False):
    capScr = np.array(ImageGrab.grab(bbox))
    if gray:
        capScr = cv2.cvtColor(capScr, cv2.COLOR_RGB2GRAY)
    else:
        capScr = cv2.cvtColor(capScr, cv2.COLOR_RGB2BGR)
    return capScr

# 判断矩形交叉
def is_rect_overlapped(r1, r2):
    x1,y1,w1,h1 = r1
    x2,y2,w2,h2 = r2
    min_x = min(x1,x2)
    max_x = max(x1+w1-1, x2+w2-1)
    min_y = min(y1,y2)
    max_y = max(y1+h1-1, y2+h2-1)
    isOverlappedX = True if abs(max_x - min_x) <= w1 + w2 else False
    isOverlappedY = True if abs(max_y - min_y) <= h1 + h2 else False
    if isOverlappedX and isOverlappedY:
        return True
    else:
        return False

# 查找矩形中心
def calc_center(xywh):
    x,y,w,h = xywh
    return (x+w//2, y+h//2)

# 模板匹配
def match_template(background, template, threshold=0.015):
    if background.ndim == 2:
        gray_bg = background
    elif background.ndim == 3:
        gray_bg = cv2.cvtColor(background, cv2.COLOR_BGR2GRAY)
    elif background.ndim == 4:
        gray_bg = cv2.cvtColor(background, cv2.COLOR_BGRA2GRAY)
    else:
        raise ValueError(f"背景图像输入格式错误:{background.ndim}")
    
    if template.ndim == 2:
        gray_template = template
    elif template.ndim == 3:
        gray_template = cv2.cvtColor(template, cv2.COLOR_BGR2GRAY)
    elif template.ndim == 4:
        gray_template = cv2.cvtColor(template, cv2.COLOR_BGRA2GRAY)
    else:
        raise ValueError(f"模板图像输入格式错误:{template.ndim}")

    area_h, area_w = gray_template.shape[:2]
    if True:
        # gray_bg[0, 0] = 0
        # gray_bg[0, 1] = 255
        res = cv2.matchTemplate(gray_bg, gray_template, cv2.TM_SQDIFF_NORMED)
        loc = np.where(res <= threshold)
    else:
        res = cv2.matchTemplate(gray_bg, gray_template, cv2.TM_CCOEFF_NORMED)
        #min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)
        loc = np.where(res <= threshold)

    xywhs = []
    for xy in zip(*loc[::-1]):
        xywh = (xy[0], xy[1], area_w, area_h)
        for prev_xywh in xywhs:
            if is_rect_overlapped(xywh, prev_xywh):
                break
        else:
            xywhs.append(xywh)
    return xywhs
