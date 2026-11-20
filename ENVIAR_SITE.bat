@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Enviando o site para o GitHub...
echo Se abrir uma janela do GitHub, clique em "Sign in with your browser" e depois em "Authorize".
echo.
git add -A
git commit -q -m "Atualiza site" 2>nul
git push -u origin main
echo.
if errorlevel 1 (echo DEU ERRO. Tire um print desta janela e mande para o Claude.) else (echo PRONTO! Site enviado. Pode fechar esta janela.)
pause
