<#
.SYNOPSIS
    Installs the /start-dev agent skill locally (workspace) or globally (user profile).
.EXAMPLE
    .\install.ps1
    .\install.ps1 -Global
    .\install.ps1 -Target copilot -Global
#>
param(
    [ValidateSet("antigravity", "copilot", "cursor", "claude", "all")]
    [string]$Target = "all",
    [switch]$Global
)

$ErrorActionPreference = "Stop"
$SourceDir = Join-Path $PSScriptRoot "skills\start-dev"

if (-not (Test-Path $SourceDir)) {
    Write-Error "Skill source not found at $SourceDir"
}

$Destinations = @()

if ($Global) {
    if ($Target -in @("antigravity", "all")) { $Destinations += "$HOME\.gemini\antigravity\skills\start-dev" }
    if ($Target -in @("copilot", "all"))     { $Destinations += "$HOME\.copilot\skills\start-dev" }
    if ($Target -in @("cursor", "all"))      { $Destinations += "$HOME\.cursor\skills\start-dev" }
    if ($Target -in @("claude", "all"))      { $Destinations += "$HOME\.claude\skills\start-dev" }
} else {
    if ($Target -in @("antigravity", "all")) { $Destinations += ".\.agents\skills\start-dev" }
    if ($Target -in @("copilot", "all"))     { $Destinations += ".\.github\skills\start-dev" }
    if ($Target -in @("cursor", "all"))      { $Destinations += ".\.cursor\skills\start-dev" }
    if ($Target -in @("claude", "all"))      { $Destinations += ".\.claude\skills\start-dev" }
}

foreach ($Dest in $Destinations) {
    New-Item -ItemType Directory -Force -Path $Dest | Out-Null
    Copy-Item -Path "$SourceDir\*" -Destination $Dest -Recurse -Force
    Write-Host "[OK] Installed /start-dev -> $Dest" -ForegroundColor Green
}