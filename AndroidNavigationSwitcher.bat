@echo off
title AndroidNavigationSwitcher 1.2
IF "%1" EQU "-1" (
adb shell cmd overlay disable com.android.internal.systemui.navbar.threebutton
adb shell cmd overlay disable com.android.internal.systemui.navbar.twobutton
adb shell cmd overlay enable com.android.internal.systemui.navbar.gestural
) else if "%1" EQU "-2" (
adb shell cmd overlay disable com.android.internal.systemui.navbar.threebutton
adb shell cmd overlay enable com.android.internal.systemui.navbar.twobutton
) else if "%1" EQU "-3" (
adb shell cmd overlay enable com.android.internal.systemui.navbar.threebutton
) else if "%1" EQU "--help" (
echo Usage: nav [option...]
echo -1 : Set gesture navigation
echo -2 : Set 2 button navigation
echo -3 : Set 3 button navigation
echo --help : Show help
) else if "%1" EQU "" (
echo Error:no option
)
title
