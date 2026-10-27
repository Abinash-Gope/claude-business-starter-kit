# ==============================================================================
# Claude Business Starter Kit - Windows PowerShell Skill Installer
# https://github.com/Abinash-Gope/claude-business-starter-kit
# ==============================================================================
[CmdletBinding()]
param (
    [switch]$Project,
    [switch]$Standalone
)

$ErrorActionPreference = "Stop"

Write-Host "====================================================" -ForegroundColor Cyan
Write-Host "    Installing Claude Business Starter Kit Skill    " -ForegroundColor Cyan
Write-Host "====================================================" -ForegroundColor Cyan

$RepoUrl = "https://github.com/Abinash-Gope/claude-business-starter-kit.git"
$ZipUrl = "https://github.com/Abinash-Gope/claude-business-starter-kit/archive/refs/heads/main.zip"

if ($Project) {
    $SkillDir = Join-Path (Get-Location) ".claude\skills\claude-business-starter-kit"
    $CommandDir = Join-Path (Get-Location) ".claude\commands"
} elseif ($Standalone) {
    $SkillDir = Join-Path $env:USERPROFILE "Claude-Business-Starter-Kit"
    $CommandDir = $null
} else {
    $SkillDir = Join-Path $env:USERPROFILE ".claude\skills\claude-business-starter-kit"
    $CommandDir = Join-Path $env:USERPROFILE ".claude\commands"
}

Write-Host "[*] Target Directory: $SkillDir" -ForegroundColor Yellow

# Ensure parent directory exists
$ParentDir = Split-Path -Path $SkillDir -Parent
if (-not (Test-Path $ParentDir)) {
    New-Item -ItemType Directory -Path $ParentDir -Force | Out-Null
}

if (Test-Path $SkillDir) {
    Write-Host "[*] Updating existing installation..." -ForegroundColor Yellow
    Remove-Item -Path $SkillDir -Recurse -Force
}

# Try git clone first, fallback to zip
$GitCmd = Get-Command git -ErrorAction SilentlyContinue
$Cloned = $false

if ($GitCmd) {
    Write-Host "[*] Cloning via git..." -ForegroundColor Green
    try {
        & git clone --depth 1 $RepoUrl $SkillDir 2>$null
        if ((Test-Path $SkillDir) -and (Test-Path (Join-Path $SkillDir "SKILL.md"))) {
            $Cloned = $true
        }
    } catch {
        $Cloned = $false
    }
}

if (-not $Cloned) {
    Write-Host "[*] Downloading zip archive..." -ForegroundColor Green
    $TempZip = Join-Path $env:TEMP "claude-business-starter-kit.zip"
    Invoke-WebRequest -Uri $ZipUrl -OutFile $TempZip
    
    $TempExtract = Join-Path $env:TEMP "claude-business-extract"
    if (Test-Path $TempExtract) { Remove-Item -Path $TempExtract -Recurse -Force }
    
    Expand-Archive -Path $TempZip -DestinationPath $TempExtract -Force
    $ExtractedFolder = Get-ChildItem -Path $TempExtract | Select-Object -First 1
    Move-Item -Path $ExtractedFolder.FullName -Destination $SkillDir -Force
    
    Remove-Item -Path $TempZip -Force -ErrorAction SilentlyContinue
    Remove-Item -Path $TempExtract -Recurse -Force -ErrorAction SilentlyContinue
}

# Install slash command if in Claude mode
if ($CommandDir) {
    if (-not (Test-Path $CommandDir)) {
        New-Item -ItemType Directory -Path $CommandDir -Force | Out-Null
    }
    $SrcCmd = Join-Path $SkillDir ".claude\commands\business.md"
    if (Test-Path $SrcCmd) {
        Copy-Item -Path $SrcCmd -Destination (Join-Path $CommandDir "business.md") -Force
        Write-Host "[+] Installed slash command: $CommandDir\business.md" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "[SUCCESS] Claude Business Starter Kit successfully installed!" -ForegroundColor Green
Write-Host ""
Write-Host "How to use:" -ForegroundColor Cyan
Write-Host "  1. Run Claude Code in your terminal:"
Write-Host "     claude" -ForegroundColor Yellow
Write-Host "  2. Type the slash command or ask any business question:"
Write-Host "     /business" -ForegroundColor Yellow
Write-Host "     'Help me validate my SaaS niche and calculate TAM'" -ForegroundColor Yellow
Write-Host "     'Write a 4-step cold email sequence for marketing agencies'" -ForegroundColor Yellow
Write-Host ""
