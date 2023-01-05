# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
source ~/github/zsh-snap/znap.zsh
# Start starship
eval "$(starship init zsh)"

# Get my bash_alias set
source ~/.bash_aliases

# Set editor to always be vim!
export EDITOR="vim"



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fabiorosado/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fabiorosado/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/fabiorosado/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fabiorosado/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# Add vscode to path to make code . run
export PATH="$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin"


# Plugins

export HISTSIZE=9999
export HISTFILESIZE=9999
export HISTCONTROL=ignoredups:erasedups
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
