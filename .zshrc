#This is the root zshrc file
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/aud/.zshrc'

autoload -Uz compinit
compinit

source /home/aud/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/aud/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PROMPT="%F{#00FF00}[%f%F{#00cc00}%n%f%F{#00FF00}@%f%F{#00cc00}%m%F{#00FF00}]-[%f%F{#00cc00}%1~%f%F{#00FF00}]-%f%F{#00FF00}$%f "
export GTK_THEME=Adwaita-dark
