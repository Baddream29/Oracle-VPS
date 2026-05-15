@echo off

cd /d "%~dp0"

echo Set WshShell = CreateObject("WScript.Shell") > hidden.vbs
echo WshShell.Run "cmd /c cd /d ""%~dp0"" && npm start", 0, False >> hidden.vbs

wscript hidden.vbs

del hidden.vbs