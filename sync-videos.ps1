param(
    [string]$Action = "push"
)

$projectDir = "$env:USERPROFILE\Desktop\video-editor"
$rawDir = "$env:USERPROFILE\Desktop\RawVideos"

if ($Action -eq "push") {
    if (-not (Test-Path $projectDir)) {
        Write-Host "❌ Project directory not found: $projectDir"
        exit 1
    }

    Set-Location $projectDir

    Write-Host "Syncing raw videos from Desktop..." -ForegroundColor Cyan

    Get-ChildItem $rawDir -Filter *.mp4 | ForEach-Object {
        $dest = "$projectDir\raw\$($_.Name)"
        Copy-Item $_.FullName $dest -Force
        git add "raw\$($_.Name)"
        Write-Host "Added: $($_.Name)"
    }

    git commit -m "Add new raw videos: $(Get-Date -Format 'yyyy-MM-dd')"
    git push origin main

    Write-Host "✅ Videos synced to GitHub" -ForegroundColor Green
}