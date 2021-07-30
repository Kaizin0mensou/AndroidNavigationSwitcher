@echo off
echo Gesture Navigation Enable=1
echo 2 Button Navigation Enable=2
echo 3 Button Navigation Enable=3
set /p navigation=
if %navigation:1=1%==1 (adb shell cmd overlay disable com.android.internal.systemui.navbar.threebutton
adb shell cmd overlay disable com.android.internal.systemui.navbar.twobutton
adb shell cmd overlay enable com.android.internal.systemui.navbar.gestural
echo Enabled
echo Press any key
pause >nul
) else if %navigation:2=2%==2 (adb shell cmd overlay disable com.android.internal.systemui.navbar.threebutton
adb shell cmd overlay enable com.android.internal.systemui.navbar.twobutton
echo Enabled
echo Press any key
pause >nul
) else if %navigation:3=3%==3 (adb shell cmd overlay enable com.android.internal.systemui.navbar.threebutton
echo Enabled
echo Press any key
pause >nul
) else (
echo Error
goto restart
)
