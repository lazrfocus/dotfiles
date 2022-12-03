# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/opt/homebrew/include

# Path to your oh-my-zsh installation.
export ZSH="/Users/user/.oh-my-zsh"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting dirhistory colorize encode64 history-substring-search iterm2 jsontools safe-paste zsh-interactive-cd)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias t="tree -s -h -a -u -f -L 1"
alias t2="tree -s -h -a -u -f -L 2"
alias t3="tree -s -h -a -u -f -L 3"

PATH="/Users/user/.gem/ruby/2.6.0/bin:$PATH"
PATH="/Users/user/.node_modules_global/bin:$PATH"

export EDITOR='nvim'

alias v='nvim'
alias diff='nvim -d'
#alias l='ls -lahF'
alias l='exa -la --icons --color-scale'
alias ls='exa'

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### nnn terminal file browser
#alias nnn='nnn' # -de' # -d for details and -e to open files in $VISUAL (for other options, see 'man nnn'...)
#-----
export NNN_OPTS="deHa" # if you prefer to have all the options at the same place
export LC_COLLATE="C" # hidden files on top
export NNN_FIFO="/Users/user/nnn.fifo" # temporary buffer for the previews
export NNN_FCOLORS="AAAAE631BBBBCCCCDDDD9999" # feel free to change the colors
export NNN_PLUG='p:preview-tui' # many other plugins are available here: https://github.com/jarun/nnn/tree/master/plugins
export SPLIT='v' # to split Kitty vertically
#-----
#  n () # to cd on quit
# {
#     if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
#         echo "nnn is already running"
#         return
#     fi
#     export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#     nnn "$@"
#     if [ -f "$NNN_TMPFILE" ]; then
#             . "$NNN_TMPFILE"
#             rm -f "$NNN_TMPFILE" > /dev/null
#     fi
# }
#

###OSX Specific###
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin
export PATH=$(brew --prefix openssh)/bin:$PATH
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
