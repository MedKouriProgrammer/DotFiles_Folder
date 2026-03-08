#!/bin/bash

# فتح تطبيقات Workspace 1
hyprctl dispatch exec [workspace 1] brave
hyprctl dispatch exec [workspace 1] code

# انتظار بسيط لضمان استقرار التشغيل
sleep 2

# فتح تطبيق Workspace 2
hyprctl dispatch exec [workspace 2] obsidian

sleep 1

# فتح تطبيقات Workspace 3 (مدير الملفات والطرفية)
# ملاحظة: استبدل thunar بـ nautilus أو dolphin حسب مدير الملفات لديك
hyprctl dispatch exec [workspace 3] thunar
hyprctl dispatch exec [workspace 3] ghostty

sleep 1

# فتح تطبيقات Workspace 4 وتشغيل rmpc
# هنا نستخدم خيار -e في الطرفية لتنفيذ الأوامر مباشرة
hyprctl dispatch exec [workspace 4] "ghostty -e 'bash -c \"mpd; rmpc; exec bash\"'"

# العودة إلى Workspace 1 في النهاية (اختياري)
hyprctl dispatch workspace 1
