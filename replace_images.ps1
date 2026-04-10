$content = Get-Content 'portfolio_WoodJerry_Final.html' -Raw
$pattern = 'src="data:image/png;base64,[^"]+?" alt="Wood Jerry bureau"'
$replacement = 'src="images/imagesummary.png" alt="Wood Jerry bureau"'
$newContent = $content -replace $pattern, $replacement
Set-Content -Path 'portfolio_WoodJerry_Final.html' -Value $newContent
Write-Host "Replacement completed"
