# Some neat pieces of config for macOS

## Using TouchID with `sudo`

1. Edit the `/etc/pam.d/sudo` (requires sudo)
2. On a new line below the comment, write `auth sufficient pam_tid.so`
3. Save the file

## Dock show delay and speed
To change the **dock show delay**:
```zsh
defaults write com.apple.dock autohide-delay -float 0; killall Dock
```
To change the **dock animation speed**:
```zsh
defaults write com.apple.dock autohide-time-modifier -float 1.0; killall Dock
```
To **lock the dock size**:
```zsh
defaults write com.apple.Dock size-immutable -bool true; killall Dock
```
To **unlock the dock size**:
```zsh
defaults write com.apple.Dock size-immutable -bool false; killall Dock
```

## Overwrite menu bar visibility on specific apps

Search for the bundle ID with (example with WebStorm):

```zsh
osascript -e 'id of app "WebStorm"'
```

which outputs: `com.jetbrains.WebStorm`. Now use `defaults` to set the menu bar visibility for that app:

```zsh
defaults write com.jetbrains.WebStorm AppleMenuBarVisibleInFullscreen -bool true
```

To do the opposite (hide the menu bar on an app), replace the `true` at the end, with `false`.<br/>
To revert back to the default setting, use

```zsh
defaults delete com.jetbrains.WebStorm AppleMenuBarVisibleInFullscreen
```

## Disable sidebar project path in the JetBrains IDEs
From the Menu: `Help/Edit Custom Properties...`
```properties
project.tree.structure.show.url=false
ide.tree.horizontal.default.autoscrolling=false
```
