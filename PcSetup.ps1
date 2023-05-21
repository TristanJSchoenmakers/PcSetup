# Requires -RunAsAdministrator

# function refresh-path {
#     $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") +
#                 ";" +
#                 [System.Environment]::GetEnvironmentVariable("Path","User")
# }

Write-Host "   Installing Applications" -BackgroundColor Magenta 
# Install all packages in winget_packages.json
winget import $PSScriptRoot\winget_packages.json --accept-package-agreements --accept-source-agreements

# Docker is just installed so you would have to refresh the $path to be able to use Docker
#refresh-path

Write-Host "   Setting up docker containers" -BackgroundColor Magenta 

# Stop all docker
#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)
#docker compose up --detach

Write-Host "   Configuring Applications" -BackgroundColor Magenta 

"Invoke-Expression (&starship init powershell)" | Out-File ( New-Item -Path $profile -Force )
