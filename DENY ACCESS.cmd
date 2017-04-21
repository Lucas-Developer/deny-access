@echo off
:in
title DENY ACCESS
color 1f
mode 20,7
cls
echo.
echo  1 Bloquear 
echo.
echo  2 Desbloquear
 echo.

set /p s= Digite =^> 
if "%s%" == "1" goto 1
if "%s%" == "2" goto 2
echo 
echo msgbox "comando invalido %s% ",vbsystemmodal,"DENY ACCESS" > %tmp%\kk.vbs& start %tmp%\kk.vbs
goto in
:1
color 0c
mode 110,7
cls
echo.
set /p s= arraste e solte aqui =^> 
icacls %s% /deny *S-1-1-0:(D,WDAC)
echo 
echo msgbox "Bloqueado",vbsystemmodal,"DENY ACCESS" > %tmp%\kk.vbs& start %tmp%\kk.vbs
goto in

:2
color 0a
mode 110,7
cls
echo.
set /p s= arraste e solte aqui =^> 
icacls %s% /grant *S-1-1-0:(D,WDAC)
echo 
echo msgbox "Desbloqueado",vbsystemmodal,"DENY ACCESS" > %tmp%\kk.vbs& start %tmp%\kk.vbs
goto in

PARA Windows Xp
Nega acesso
cacls %s% /e /p administradores:n

libera o acesso
cacls %s% /e /p administradores:f

ATENÇÃO LEMBR-SE
A variavel esta no lugar do nome do arquivo ou pasta

pessoal esse é o bip  pra ele funcionar basta colocar com o desta forma echo 