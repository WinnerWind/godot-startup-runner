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
2. Move `/addons/startup_runner` to your project folder
3. Done!

# Usage
1. Enable the plugin from `Project > Project Settings > Plugins`
2. Edit the file `res://addons/startup_runner/command.txt`. Put the command of your favourite shell on the first line, which is by default `sh`. On Windows it's `cmd.exe`
3. Put the argument used by your shell to execute commands. By default it is `-c`. On Windows, it is `/c`.
4. Define your command after the first two lines in `command.txt`, with each command being on one line, for example:
```bash
konsole -e lazygit --path /home/myuser/path
spotify
vlc /home/myuser/Music/My\ Songs
```
5. Enjoy!

*Note*
If your `command.txt` looks like
```bash
sh
-c
spotify
vlc "/home/myuser/Music/My Songs/"
```

The plugin will execute `sh -c spotify` and `sh -c vlc "/home/myuser/Music/My Songs"`. 

*Note 2*
Prefer using absolute paths rather than relative paths, as by default, the plugin will execute the command in your home directory.

*Note 3*
Re-starting the plugin from within the editor can cause a freeze. It is reccomended to restart the editor entirely rather than re-starting just the plugin.
