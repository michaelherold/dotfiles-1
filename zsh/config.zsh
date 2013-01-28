export EDITOR=vim
export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/zsh/functions $fpath)
fpath=($ZSH/zsh/completions $fpath)

autoload -U $ZSH/zsh/functions/*(:t)
autoload -U $ZSH/zsh/completions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF
setopt AUTO_CD

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# Automatically use pushd
setopt AUTOPUSHD
export DIRSTACKSIZE=8

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

# Disable autocorrect
unsetopt correct_all
unsetopt correct
