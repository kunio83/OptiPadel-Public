@echo off
echo ========================================
echo   Push OptiPadel-Public to GitHub
echo ========================================
echo.
echo IMPORTANTE: Necesitas autenticarte con GitHub
echo.
echo Opcion 1: Si ya configuraste Git Credential Manager
echo   - Solo ejecuta: git push -u origin main
echo.
echo Opcion 2: Usar Personal Access Token
echo   - Cuando pida username: kunio83
echo   - Cuando pida password: pega tu PAT (el mismo que usaste para PUBLIC_REPO_PAT)
echo.
echo Presiona cualquier tecla para continuar con el push...
pause >nul

cd /d "%~dp0"
git push -u origin main

echo.
echo ========================================
if %ERRORLEVEL%==0 (
    echo EXITO: Cambios subidos a GitHub
) else (
    echo ERROR: No se pudo subir a GitHub
    echo.
    echo Soluciones:
    echo 1. Verifica que tu PAT tenga permisos 'repo'
    echo 2. Asegurate de estar logueado con la cuenta kunio83
    echo 3. Intenta: gh auth login
)
echo ========================================
echo.
pause
