:: create_noir.bat
:: Builds the HTML game file and opens it in Visual Studio Code or Notepad.

cd %USERPROFILE%\Desktop
echo Creating Decode_the_Author_Noir.html on your Desktop...
(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>^<meta charset="utf-8"^>^<title>Decode the Author � Noir^</title>^</head^>
echo ^<body style="background:#0a0c10;color:#d4af37;font-family:sans-serif;padding:40px"^>
echo ^<h1>Decode the Author � Noir</h1^>
echo ^<p>This is your starter file. Next step: open this file in VS Code and paste the full game code from ChatGPT (everything between ^&lt;!DOCTYPE html^&gt; and ^&lt;/html^&gt;).</p^>
echo ^<p>Once you paste and save, double-click it to launch the noir interface.</p^>
echo ^</body^>
echo ^</html^>
) > decode_the_author_noir.html

echo.
echo File created: %USERPROFILE%\Desktop\decode_the_author_noir.html

:: try VS Code first, fall back to Notepad
where code >nul 2>nul
if %errorlevel%==0 (
    start code "%USERPROFILE%\Desktop\decode_the_author_noir.html"
) else (
    start notepad "%USERPROFILE%\Desktop\decode_the_author_noir.html"
)

pause
