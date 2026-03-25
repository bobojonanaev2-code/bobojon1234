# ========================================
# update_apps.ps1
# Updates all installed applications on Windows 10/11 via winget
# Usage: .\update_apps.ps1 [-ShowTerminal] [-Help]
# ========================================

param(
    [switch]$ShowTerminal,
    [switch]$Help
)

$ErrorActionPreference = "Continue"

function Show-Help {
    Write-Host "Usage: .\update_apps.ps1 [OPTIONS]" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Options:" -ForegroundColor Yellow
    Write-Host "  -ShowTerminal    Run in a new terminal window"
    Write-Host "  -Help            Show this help"
    Write-Host ""
    Write-Host "Example:" -ForegroundColor Green
    Write-Host "  .\update_apps.ps1"
    Write-Host "  .\update_apps.ps1 -ShowTerminal"
}

if ($Help) {
    Show-Help
    exit 0
}

# Run in a new terminal window if -ShowTerminal is set
if ($ShowTerminal) {
    $ScriptPath = $MyInvocation.MyCommand.Path
    Start-Process powershell -ArgumentList "-NoExit -ExecutionPolicy Bypass -File `"$ScriptPath`"" -Verb RunAs
    exit 0
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "System Application Update" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if winget is available
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "Error: winget not found." -ForegroundColor Red
    Write-Host "Install 'App Installer' from the Microsoft Store and try again." -ForegroundColor Yellow
    exit 1
}

Write-Host "[winget] Checking available updates..." -ForegroundColor Yellow
winget upgrade
Write-Host ""

Write-Host "[winget] Upgrading all packages..." -ForegroundColor Cyan
winget upgrade --all --accept-source-agreements --accept-package-agreements

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "[winget] All packages updated successfully." -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "Warning: some packages may not have updated (exit code $LASTEXITCODE)." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Update completed!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
