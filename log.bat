@echo off
color 0A
:inicio
cls
echo ====================================================
echo PAINEL DE ADMINISTRACAO DE REDES - IFCE
echo ====================================================

echo [1] Verificar Configuracoes de IP (Ipconfig)
echo [2] Testar Conectividade com Servidor (Ping)
echo [3] Consultar Registros DNS (Nslookup)
echo [4] Gerar Log Automatico 
echo [5] Sair
echo ====================================================
set /p opcao="Selecione uma opcao desejada: "
if "%opcao%"=="1" goto op1
if "%opcao%"=="2" goto op2
if "%opcao%"=="3" goto op3
if "%opcao%"=="4" goto op4
if "%opcao%"=="5" goto sair
:op1
cls
echo Coletando configuracoes de IP...
ipconfig
echo.
pause
goto inicio
:op2
cls
set /p destino="Digite o IP ou site de destino: "
ping %destino%
echo.
pause
goto inicio

:op3
cls
set /p dominio="Digite o dominio para consulta DNS: "
nslookup %dominio%
echo.
pause
goto inicio

:op4
cls
set log = log.txt
ipconfig >> log.txt
pause
goto inicio



:sair
exit