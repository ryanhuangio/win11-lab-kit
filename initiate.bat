sc.exe config wuauserv start=disabled
powershell Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
echo "Firewall disabled."
powershell Set-MpPreference -DisableRealtimeMonitoring $true
powershell Set-MpPreference -SubmitSamplesConsent NeverSend
powershell Set-MpPreference -MAPSReporting Disable

:: Example of Task Automation
::mkdir C:\mining
::copy .\mine.bat C:\mining
::copy .\t-rex.exe C:\mining
::copy .\mined.bat "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
::echo "Miner installed."

:: Installs Chocolatey Package Manager
powershell "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
C:\ProgramData\chocolatey\bin\choco install bonjour -y
C:\ProgramData\chocolatey\bin\choco install googlechrome -y
C:\ProgramData\chocolatey\bin\choco install chrome-remote-desktop-chrome -y

:: Add additional applications you want automatically installed on your new system
::C:\ProgramData\chocolatey\bin\choco install nvidia-display-driver -y
::C:\ProgramData\chocolatey\bin\choco install msiafterburner -y
