# Godot Startup Command Runner
A stupidly simple plugin that just runs a command when your project is started.

# Installation
## Asset Library
1. Go to the Godot Asset Library
2. Search for "Godot Startup Command Runner"
3. Click Install
4. Done!

## Manual Install
1. Download this repository with `git clone https://github.com/WinnerWind/godot-startup-runner`
2. Move `/assets/startup_runner` to your project folder
3. Done!

# Usage
1. Enable the plugin from `Project > Project Settings > Plugins`
2. Define your commands in `/assets/startup_runner/command.txt`, with each command being on one line, for example:

```bash
konsole -e lazygit --path /home/myuser/path
spotify
vlc ~/Music/My\ Songs
```
3. Enjoy!
