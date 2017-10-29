# PSI
export PS1="\h:\w \u\\$\[$(tput sgr0)\]\$(__git_ps1) "

# Path Additions
export PATH="/usr/local/sbin:$PATH"

# Sources
source ~/.bash_includes/bash_completion
source ~/.bash_includes/git-prompt.sh
source ~/.bash_includes/iterm2-integration.bash
source ~/.bash_includes/git-completion.bash
source ~/.bash_includes/bd-completion.bash
source ~/.bash_includes/tmuxinator.bash
source ~/.bash_includes/t-completion.sh
source /usr/local/etc/bash_completion.d/pass

# Aliases
alias ll='ls -aFGl'
alias ls='ls -G'
alias bd=". bd -si"
alias vim="/usr/local/bin/nvim"
alias todo="vim ~/.todo"
alias muxstart="~/.bin/tmux/session_start.sh"
alias muxmain="tmux -CC attach -t main"
alias muxchat="tmux -CC attach -t chat"
alias profanity="profanity -a manpow"
alias starttunnel="ssh -fnNT -M -S ~/.ssh_socket -L 1337:localhost:1337 glados &"
alias stoptunnel="ssh -S ~/.ssh_socket -O exit glados"
alias ag="ag --path-to-ignore ~/.agignore"

# Clear terminal windows after execution.
alias ncmpcppd="brew services restart mopidy 2&> /dev/null && ncmpcpp && clear"
alias mutt="mutt && clear"
alias profanity="profanity && clear"
alias newsbeuter="newsbeuter && clear"

# Exports
export EDITOR="vim"
export PASSWORD_STORE_CLIP_TIME=15
export COMPOSE_HTTP_TIMEOUT=120
export LYNX_CFG_PATH="/Users/nomad/.config"

# GPG-Agent
GPG_TTY=$(tty)
export GPG_TTY
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi

# Open Man Pages in Vim
man() {
  /usr/bin/man $* | \
    col -b | \
    vim -R -c 'set ft=man nomod nolist' -
}