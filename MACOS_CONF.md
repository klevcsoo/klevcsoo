# Some neat pieces of config for macOS

## Using TouchID with `sudo`

1. Open `/etc/pam.d/sudo` (requires sudo)
2. On a new line below the comment, write `auth sufficient pam_tid.so`
3. Click **OK**

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

## Disable sidebar project path in the JetBrains IDEs
From the Menu: `Help/Edit Custom Properties...`
```properties
project.tree.structure.show.url=false
ide.tree.horizontal.default.autoscrolling=false
```
