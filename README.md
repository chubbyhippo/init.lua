## sh
```
git clone https://github.com/chubbyhippo/init.lua.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
```
mkdir -p "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim && curl https://raw.githubusercontent.com/chubbyhippo/init.lua/main/init.lua -o "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim/init.lua
```
```
if(!(Test-Path -Path "$Home\.config\nvim\")){New-Item -ItemType Directory -Force -Path "$Home\.config\nvim\"}; Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chubbyhippo/init.lua/main/init.lua" -OutFile "$Home\.config\nvim\init.lua"
```
