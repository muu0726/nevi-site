@echo off
chcp 65001 >nul
cd /d "C:\Nevi-ai\projects\nevi-site"
if exist ".nevi\DONE" del ".nevi\DONE"
"C:\Users\umuta\AppData\Roaming\npm\claude.CMD" --model opus --permission-mode bypassPermissions -p "Read .nevi/BUILD_PROMPT.md and implement the static website described there. Put index.html at the project root. Do not ask for approval; just build it."
>".nevi\DONE" echo %ERRORLEVEL%
echo.
echo [Nevi] finished. This window stays open so you can review the output.
