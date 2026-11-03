@echo off
title Dream House Designer - AI 3D Platform
echo ========================================================
echo        DREAM HOUSE DESIGNER - AI 3D HOME PLATFORM
echo ========================================================
echo.

set "BASE_DIR=%~dp0"
if exist "%BASE_DIR%dream-house-designer\frontend" (
    set "FRONTEND_DIR=%BASE_DIR%dream-house-designer\frontend"
) else if exist "%BASE_DIR%frontend" (
    set "FRONTEND_DIR=%BASE_DIR%frontend"
) else (
    echo [ERROR] Could not locate frontend directory.
    pause
    exit /b 1
)

cd /d "%FRONTEND_DIR%"

if not exist "node_modules\" (
    echo [1/3] First-time setup: Installing dependencies...
    call npm install
) else (
    echo [1/3] Dependencies verified!
)

echo.
echo [2/3] Opening Dream House Designer in your browser...
start http://localhost:3001

echo.
echo [3/3] Starting Vite Development Server...
echo Press Ctrl+C anytime to stop the server.
echo.
call npm run dev
pause

