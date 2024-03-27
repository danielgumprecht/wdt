$srv = Read-Host "enter SRV IP"

# Edge > SRV
Get-Process -Name msedge -ErrorAction SilentlyContinue | Stop-Process -Force
New-Item -ItemType Directory -Path "\\$srv\clientapps$\_Backups\$env:USERNAME\Edge"
robocopy "\Users\$env:USERNAME\AppData\Local\Microsoft\Edge" "\\$srv\clientapps$\_Backups\$env:USERNAME\Edge" /E /MIR /W:0 /V

# Chrome > SRV
Get-Process -Name chrome -ErrorAction SilentlyContinue | Stop-Process -Force
New-Item -ItemType Directory -Path "\\$srv\clientapps$\_Backups\$env:USERNAME\Google"
robocopy "\Users\$env:USERNAME\AppData\Local\Google" "\\$srv\clientapps$\_Backups\$env:USERNAME\Google" /E /MIR /W:0 /V

# Firefox > SRV
Get-Process -Name firefox -ErrorAction SilentlyContinue | Stop-Process -Force
New-Item -ItemType Directory -Path "\\$srv\clientapps$\_Backups\$env:USERNAME\Mozilla"
robocopy "\Users\$env:USERNAME\AppData\Local\Mozilla" "\\$srv\clientapps$\_Backups\$env:USERNAME\Mozilla" /E /MIR /W:0 /V
