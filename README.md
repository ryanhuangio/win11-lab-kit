# win11-lab-kit
Windows 11 Lab Kit (compatible with Windows 10) helps disable Windows Updates Auto Update (WUAU), disables firewall, disables real time monitoring, disables samples submits and installs the Chocolatey package manager for Windows, along with any applications you want automatically installed in your Windows 11 lab -- **running just a single command!**

## Installation
1. Right click and Edit in Notepad **initiate.bat**
2. Add/Edit the Chocolatey app installations (lines 17 to 23). Please go to https://community.chocolatey.org/packages to get the 'choco install' command for each app you would like installed.
3. Save and Close.
4. Right click on Windows Terminal (or Power Shell for Windows 10) and Run as Administrator
5. Navigate to the folder containing initiate.bat
6. Run **powershell initiate.bat**
7. Sit back and watch the magic happen.
