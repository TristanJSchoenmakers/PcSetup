# Buckaroo Developer PC Setup Script

echo "---------------------------------------" 
echo "      1 - Install applications        |" 
echo "---------------------------------------" 

# Install all packages in winget_packages.json
winget import $PSScriptRoot\winget_packages.json --accept-package-agreements --accept-source-agreements


echo ""
echo "---------------------------------------" 
echo "|    2 - Setup Docker Containers      |" 
echo "---------------------------------------"

# Stop all docker
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker compose up --detach