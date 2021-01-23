# Copyright by BlueWhale. All Rights Reserved.
execute store result score #LibTime libTemp run time query daytime
# 更新时间
schedule function library:main/1t 1t
# loop
