اگر منظورتان اسکریپت داخل MikroTik RouterOS برای ساخت ربات تلگرام است، می‌توانید با استفاده از API تلگرام و دستور :tool fetch یک ربات ساده بسازید. میکروتیک به‌صورت مستقیم کتابخانه ربات ندارد، اما می‌تواند به URL API تلگرام درخواست HTTP بفرستد.
1) ساخت ربات تلگرام
ابتدا در تلگرام به ربات BotFather بروید:
/newbot
توکن دریافت‌شده را در اسکریپت قرار دهید.
2) فعال کردن دسترسی HTTPS در MikroTik
در RouterOS باید اجازه درخواست HTTPS داشته باشید:
/system package print
مطمئن شوید پکیج‌های لازم فعال هستند.
3) اسکریپت ارسال پیام تلگرام از MikroTik
:local botToken "YOUR_BOT_TOKEN"
:local chatID "YOUR_CHAT_ID"
:local message "MikroTik Online!"

/tool fetch url=("https://api.telegram.org/bot".$botToken."/sendMessage?chat_id=".$chatID."&text=".$message) keep-result=no
با اجرای این اسکریپت، پیام به تلگرام ارسال می‌شود.
4) گرفتن Chat ID
بعد از ساخت ربات:
به ربات خودتان یک پیام بدهید.
در مرورگر باز کنید:
https://api.telegram.org/botTOKEN/getUpdates
عدد داخل:
"chat":{"id":123456789}
همان Chat ID است.
5) ربات مانیتورینگ MikroTik (ارسال وضعیت CPU و RAM)
:local botToken "YOUR_BOT_TOKEN"
:local chatID "YOUR_CHAT_ID"

:local cpu [/system resource get cpu-load]
:local ramFree [/system resource get free-memory]

:local msg ("Router Status%0ACPU: ".$cpu."%%0ARAM Free: ".$ramFree)

:tool fetch url=("https://api.telegram.org/bot".$botToken."/sendMessage?chat_id=".$chatID."&text=".$msg) keep-result=no
6) ارسال هشدار هنگام قطع اینترنت
در Netwatch:
IP:
8.8.8.8
قسمت Down Script:
:local botToken "YOUR_BOT_TOKEN"
:local chatID "YOUR_CHAT_ID"

/tool fetch url=("https://api.telegram.org/bot".$botToken."/sendMessage?chat_id=".$chatID."&text=Internet%20Disconnected") keep-result=no
قسمت Up Script:
:local botToken "YOUR_BOT_TOKEN"
:local chatID "YOUR_CHAT_ID"

/tool fetch url=("https://api.telegram.org/bot".$botToken."/sendMessage?chat_id=".$chatID."/sendMessage?text=Internet%20Connected") keep-result=no
اگر هدف شما ربات کامل مدیریتی MikroTik باشد (مثلاً دستورهای تلگرام مثل /cpu، /ip، /reboot، /users، /backup و کنترل روتر)، باید یک اسکریپت طولانی‌تر با getUpdates و پردازش پیام‌ها نوشته شود.