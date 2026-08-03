@echo off
chcp 65001 >nul
cd /d "C:\Nevi-ai\projects\nevi-site"
if exist ".nevi\DONE" del ".nevi\DONE"
"C:\Users\umuta\AppData\Local\agy\bin\agy.exe" --add-dir C:\Nevi-ai\projects\nevi-site --mode accept-edits --dangerously-skip-permissions --model gemini-3.6-flash-high -p "Read .nevi/BUILD_PROMPT.md in this workspace and implement the static website described there. Put index.html at the workspace root. Do not ask for approval; complete the implementation directly."
>".nevi\DONE" echo %ERRORLEVEL%
echo.
echo [Nevi] finished. This window stays open so you can review the output.
