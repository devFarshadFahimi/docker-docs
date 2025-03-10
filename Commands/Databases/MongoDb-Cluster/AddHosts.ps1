$hostsPath = "C:\Windows\System32\drivers\etc\hosts"
$entries = @(
    "127.0.0.1       mongo1",
    "127.0.0.1       mongo2",
    "127.0.0.1       mongo3"
)

# خواندن محتوای فایل hosts
$hostsContent = Get-Content $hostsPath

foreach ($entry in $entries) {
    if ($hostsContent -notcontains $entry) {
        Add-Content -Path $hostsPath -Value $entry
        Write-Host "Added: $entry"
    } else {
        Write-Host "Already exists: $entry"
    }
}

Write-Host "hosts updated."
