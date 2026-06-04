#!/bin/bash

# තාවකාලික ෆෝල්ඩරයක් සාදා ගැනීම
mkdir -p /tmp/xui && cd /tmp/xui

# X-UI ලිනක්ස් බයිනරි එක කෙලින්ම ඩවුන්ලෝඩ් කිරීම
curl -sL https://github.com/vaxilu/x-ui/releases/latest/download/x-ui-linux-amd64.tar.gz -o x-ui.tar.gz
tar -zxf x-ui.tar.gz
cd x-ui

# Hugging Face එකට ගැලපෙන සෙටින්ග්ස් සකස් කිරීම
./x-ui setting -username admin -password admin -port 7860

# සර්වර් එක සාර්ථකව foreground එකේ රන් කිරීම (starting ප්‍රශ්නය මඟහැරේ)
exec ./x-ui
