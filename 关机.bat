choice /C hmc /M "hour,minute,cancel"
if errorlevel 3 goto cancel
if errorlevel 2 goto minute
if errorlevel 1 goto hour
:hour
set /p val=请输入（小时）
echo 您输入了%val%
set /a time=%val%*3600
shutdown /s /t %time%
goto hour_end
:minute
set /p val=请输入（分钟）
echo 您输入了%val%
set /a time=%val%*60
shutdown /s /t %time%
goto minute_end
:cancel
shutdown /a