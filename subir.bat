@echo off
title Sincronizando con GitHub - SUBIR
cd /d "%~dp0"

echo ============================================
echo   SUBIENDO ARCHIVOS AL REPOSITORIO
echo ============================================
echo.

:: Descarga cambios previos por seguridad para evitar conflictos
echo Comprobando cambios remotos...
git pull --rebase origin main

echo.
echo Guardando archivos locales...
git add -A

:: Comprobar si realmente hay cambios que guardar
git diff-index --quiet HEAD --
if %errorlevel% equ 0 (
    echo No hay cambios nuevos para subir.
    goto FIN
)

:: Crear commit con fecha y hora actual
git commit -m "Auto-sync: %date% %time%"

echo.
echo Enviando cambios a GitHub...
git push origin main

:FIN
echo.
echo ============================================
echo   PROCESO COMPLETADO
echo ============================================
pause