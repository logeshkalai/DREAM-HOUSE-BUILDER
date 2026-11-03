Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "       DREAM HOUSE DESIGNER - AI 3D HOME PLATFORM" -ForegroundColor Yellow
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

$baseDir = $PSScriptRoot
if (Test-Path "$baseDir\dream-house-designer\frontend") {
    $frontendDir = "$baseDir\dream-house-designer\frontend"
} elseif (Test-Path "$baseDir\frontend") {
    $frontendDir = "$baseDir\frontend"
} else {
    Write-Error "Could not locate frontend directory."
    return
}

Set-Location $frontendDir

if (-not (Test-Path "node_modules")) {
    Write-Host "[1/3] First-time setup: Installing dependencies..." -ForegroundColor Green
    npm install
} else {
    Write-Host "[1/3] Dependencies verified!" -ForegroundColor Green
}

Write-Host "[2/3] Opening Dream House Designer in your browser..." -ForegroundColor Cyan
Start-Process "http://localhost:3000"

Write-Host "[3/3] Starting Vite Development Server..." -ForegroundColor Yellow
Write-Host "Press Ctrl+C anytime to stop the server.`n" -ForegroundColor DarkGray
npm run dev

