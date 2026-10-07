#!/usr/bin/env python3
"""生成 launcher PNG 图标（老 ROM/老 Launcher 对矢量图标支持不佳）。

设计与 res/drawable/ic_launcher.xml / ic_launcher_round.xml 一致（108x108 视图坐标）：
  - 方形版：圆角方块底 #6750A4；圆形版：整圆底 #6750A4
  - 白色同心环（外环 24~84 / 内环 36~72）+ 中心圆点（r=4 @54,54）
输出 mipmap-{mdpi,hdpi,xhdpi,xxhdpi,xxxhdpi}/ic_launcher.png 与 ic_launcher_round.png
"""
import os, struct, zlib

BG = (0x67, 0x50, 0xA4)
FG = (0xFF, 0xFF, 0xFF)
SS = 4

def in_round_rect(x, y, x0, y0, x1, y1, r):
    if not (x0 <= x <= x1 and y0 <= y <= y1): return False
    cx = min(max(x, x0 + r), x1 - r); cy = min(max(y, y0 + r), y1 - r)
    dx, dy = x - cx, y - cy
    return dx*dx + dy*dy <= r*r

def in_circle(x, y, cx, cy, arg):
    dx, dy = x-cx, y-cy
    return dx*dx + dy*dy <= arg*arg

def sample(x, y, round_icon):
    if round_icon:
        if not in_circle(x, y, 54, 54, 54): return (0,0,0,0)
    else:
        if not in_round_rect(x, y, 0, 0, 108, 108, 22): return (0,0,0,0)
    # 外环：半径 30 的圆环，描边宽 9（24~84 直径的圆，内部挖 21 半径）
    if in_circle(x, y, 54, 54, 30) and not in_circle(x, y, 54, 54, 21):
        return FG + (255,)
    # 内环：半径 18，描边 6
    if in_circle(x, y, 54, 54, 18) and not in_circle(x, y, 54, 54, 12):
        return FG + (255,)
    # 中心点 r=4
    if in_circle(x, y, 54, 54, 4):
        return FG + (255,)
    return BG + (255,)

def render(size, round_icon):
    rows = []; step = 108.0/(size*SS)
    for py in range(size):
        row = []
        for px in range(size):
            acc = [0.0,0.0,0.0,0.0]
            for sy in range(SS):
                for sx in range(SS):
                    x = (px*SS+sx+0.5)*step; y = (py*SS+sy+0.5)*step
                    r,g,b,a = sample(x, y, round_icon)
                    acc[0]+=r*a; acc[1]+=g*a; acc[2]+=b*a; acc[3]+=a
            n = SS*SS; alpha = acc[3]/n
            if alpha <= 0: row.append((0,0,0,0))
            else: row.append((int(acc[0]/acc[3]+0.5), int(acc[1]/acc[3]+0.5), int(acc[2]/acc[3]+0.5), int(alpha+0.5)))
        rows.append(row)
    return rows

def write_png(path, rows, size):
    raw = b"".join(b"\x00" + b"".join(bytes(p) for p in r) for r in rows)
    def chunk(tag, data):
        return struct.pack(">I", len(data)) + tag + data + struct.pack(">I", zlib.crc32(tag+data) & 0xFFFFFFFF)
    png = (b"\x89PNG\r\n\x1a\n"
           + chunk(b"IHDR", struct.pack(">IIBBBBB", size, size, 8, 6, 0, 0, 0))
           + chunk(b"IDAT", zlib.compress(raw, 9)) + chunk(b"IEND", b""))
    open(path, "wb").write(png)

def main():
    root = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "app", "src", "main", "res")
    for folder, size in [("mipmap-mdpi",48),("mipmap-hdpi",72),("mipmap-xhdpi",96),("mipmap-xxhdpi",144),("mipmap-xxxhdpi",192)]:
        d = os.path.join(root, folder); os.makedirs(d, exist_ok=True)
        for name, rnd in (("ic_launcher.png", False), ("ic_launcher_round.png", True)):
            out = os.path.join(d, name)
            write_png(out, render(size, rnd), size)
    print("图标生成完成")

if __name__ == "__main__":
    main()
