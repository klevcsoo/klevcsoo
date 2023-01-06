# path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zsh theme (overriden by starship anyway)
ZSH_THEME="gallois"

# automatically update without asking
zstyle ':omz:update' mode auto

# update every week
zstyle ':omz:update' frequency 7

# plugins (custom: autosuggestions, syntax highlighting)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#aliases
alias sort-launchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"
alias py="python3"
alias sizes="du -sh ./* | sort -h"
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"

# starship
eval "$(starship init zsh)"
