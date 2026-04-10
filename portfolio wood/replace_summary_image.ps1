$path = "portfolio_WoodJerry_Final.html"
$content = Get-Content -Path $path -Raw
$old = "    <!-- PHOTO col -->`r`n    <div class=\"reveal\" style=\"padding-bottom:2rem;\">`r`n  <div class=\"panel-header reveal\">"
$new = "    <!-- PHOTO col -->`r`n    <div class=\"reveal summary-photo-col\" style=\"padding-bottom:2rem;\">`r`n      <img src=\"images/imagesummary.png\" alt=\"Wood Jerry bureau\" class=\"summary-photo\" style=\"aspect-ratio:1/1;object-position:top;\">`r`n    </div>`r`n  </div>`r`n</div>`r`n`r`n  <div class=\"panel-header reveal\">"
if ($content -like "*$old*") {
    $content = $content.Replace($old, $new)
    Set-Content -Path $path -Value $content
    Write-Host "Replacement succeeded"
} else {
    Write-Host "Old block not found."
    $index = $content.IndexOf('<!-- PHOTO col -->')
    if ($index -ge 0) {
        $preview = $content.Substring($index, [Math]::Min(300, $content.Length - $index))
        Write-Host "Preview:"; Write-Host $preview
    }
}
