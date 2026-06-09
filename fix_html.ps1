$lines = Get-Content "index.html"
$keep = $lines[0..754] + $lines[1312..($lines.Count - 1)]
$keep | Set-Content "index.html" -Encoding UTF8
Write-Host "Done. Lines kept: $($keep.Count)"
