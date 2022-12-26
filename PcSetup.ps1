# Requires -RunAsAdministrator

Write-Host "   Installing Applications" -BackgroundColor Magenta 
# Install all packages in winget_packages.json
winget import $PSScriptRoot\winget_packages.json --accept-package-agreements --accept-source-agreements


Write-Host "   Setting up docker containers" -BackgroundColor Magenta 

# Stop all docker
#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)
#docker compose up --detach

Write-Host "   Configuring Applications" -BackgroundColor Magenta 

"Invoke-Expression (&starship init powershell)" | Out-File ( New-Item -Path $profile -Force )
