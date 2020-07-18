# -*- coding: utf-8 -*-
# Copyright by BlueWhale. All Rights Reserved.
"""
    公共方法
"""


def time_escape(t: float = 0, iteration: bool = False) -> str:
    """
    经过时间（秒）转为字符串
    :param t:时间长度
    :param iteration:是否为迭代
    :return:字符串
    """
    if t < 1:
        if t > 0:
            return f"{int(t * 1000)}毫秒"
        elif t == 0:
            if iteration is True:
                return "0秒"
            else:
                return "当前"
        else:
            return f"过去时间：{time_escape(-t)}"
    elif t < 60:
        return f"{int(t)}秒"
    elif t < 3600:
        return f"{int(t / 60)}分{time_escape(t % 60, True)}"
    elif t < 86400:
        return f"{int(t / 3600)}时{time_escape(t % 3600, True)}"
    else:
        return f"{int(t / 86400)}天{time_escape(t % 86400, True)}"
