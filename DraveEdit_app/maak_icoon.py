#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Genereert draveedit.ico vanuit het Dravenlock-huislogo (logo.png).
Pillow slaat meerdere ICO-maten op. Valt terug op een eenvoudig getekend
icoon als logo.png ontbreekt."""
import os
from PIL import Image, ImageDraw

SIZES = [(16, 16), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)]


def from_logo():
    im = Image.open("logo.png").convert("RGBA")
    # vierkant maken (center-crop) zodat het icoon niet vervormt
    w, h = im.size
    s = min(w, h)
    im = im.crop(((w - s) // 2, (h - s) // 2, (w - s) // 2 + s, (h - s) // 2 + s))
    im.save("draveedit.ico", sizes=SIZES)
    print("draveedit.ico geschreven vanuit logo.png")


def fallback():
    DOC = (111, 163, 214, 255)
    INK = (14, 14, 17, 255)
    size = 256
    img = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    s = size
    m = s * 0.16
    d.rounded_rectangle([m, m * 0.7, s - m, s - m * 0.7],
                        radius=int(s * 0.10), fill=DOC)
    lw = max(1, int(s * 0.05))
    widths = (0.68, 0.68, 0.52)
    for i in range(3):
        yy = s * 0.36 + i * s * 0.16
        d.line([s * 0.30, yy, s * widths[i], yy], fill=INK, width=lw)
    img.save("draveedit.ico", sizes=SIZES)
    print("draveedit.ico geschreven (fallback)")


def main():
    if os.path.exists("logo.png"):
        try:
            from_logo()
            return
        except Exception as e:
            print("logo.png kon niet, val terug:", e)
    fallback()


if __name__ == "__main__":
    main()
