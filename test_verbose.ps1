$logFile = ".logs\install-$(Get-Date -Format "HH-mm-ss-ff").log"
filter VerboseFilter { if ($verboseFlag) { Write-Host $_} }
filter ExecFilter {Write-Output $_ | Tee-Object -FilePath $logFile -Append | VerboseFilter }
New-Item -Path $logFile -Force | ExecFilter
