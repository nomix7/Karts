@echo off
title Sincronizando con GitHub - DESCARGAR
cd /d "%~dp0"

echo ============================================
echo   DESCARGANDO ULTIMOS CAMBIOS DE GITHUB
echo ============================================
echo.

git pull origin main

echo.
echo ============================================
echo   SINCRONIZACION FINALIZADA
echo ============================================
pause