This is an example script to help with a quick setup and installation of tools and applications for a new developer in a team.

## Getting started

### 1 - Make sure you have Winget/App Installer installed through the Microsoft Store


### 2 - Clone this repository

Open Powershell in Windows Terminal and run the following command:

``` powershell
git clone https://github.com/TristanJSchoenmakers/PcSetup.git
```

### 3 - Run the Pc Setup script

``` powershell
.\PcSetup\PcSetup.ps1
# When having Policy issues you can try this
Powershell.exe - ExecutionPolicy Bypass -File .\PcSetup\PcSetup.ps1
```

The first time running your script one of the applications that is installed is **Docker**.
Go through the steps to get Docker running and run the script again to run all the docker containers.
