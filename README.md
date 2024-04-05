## sh
```
[ -d "${XDG_CONFIG_HOME:-$HOME/.config}/nvim" ] && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"; git clone https://github.com/chubbyhippo/init.lua.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
```
[ -d "${XDG_CONFIG_HOME:-$HOME/.config}/nvim" ] && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"; mkdir -p "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim && curl https://raw.githubusercontent.com/chubbyhippo/init.lua/main/init.lua -o "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim/init.lua
```
## win powershell
```
if(!(Test-Path -Path "$env:USERPROFILE\AppData\Local\nvim\")){New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\AppData\Local\nvim\"}; Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chubbyhippo/init.lua/main/init.lua" -OutFile "$env:USERPROFILE\AppData\Local\nvim\init.lua"
```
