@chcp 65001
@echo off

setlocal EnableDelayedExpansion
set /p path="Enter a path: "

set path=%path:"=%

for /f "delims=" %%a in ('dir /s /b /ad /on "%path%"') do (
 set output=%%a
 echo !output:%path%\=!
)

pause