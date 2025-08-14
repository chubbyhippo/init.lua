## curl
```sh
mkdir -p $HOME/.config/nvim && curl https://raw.githubusercontent.com/chubbyhippo/init.lua/main/init.lua -o $HOME/.config/nvim/init.lua
```
## win
```powershell
if(!(Test-Path -Path "$env:USERPROFILE\AppData\Local\nvim\")){New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\AppData\Local\nvim\"}; Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chubbyhippo/init.lua/main/init.lua" -OutFile "$env:USERPROFILE\AppData\Local\nvim\init.lua"
```
