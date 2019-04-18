# --color=auto is not available everywhere
ls --color &> /dev/null && alias ls="ls -Fh --color" || alias ls="ls -GFh"

# grep doesn't support --color every where either
if grep --color "a" <<<"a" &>/dev/null; then
    alias grep='grep --color=auto'
fi

# Use neovim if available
if command_exists nvim; then
    alias vim=nvim;
fi

alias vi='vim -u ~/.vim/sane_vimrc'

# silver searcher
alias ag='ag --noheading --nobreak'

# Shortcut to create new tmux with pwd as session name
alias tmux='tmux -2 -u'
alias newtmux='tmux new -s ${PWD##*/}'

# fzf vim
alias vip='vim +FZF'

alias histfix='history -n && history -w && history -c && history -r'

# Git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gcm='git commit'
alias gd='git diff'
alias gco='git checkout '
alias diff='git difftool HEAD'
alias gpl='git pull'
alias gps='git push'
alias gemail='git config user.email'
alias gname='git config user.name'
alias groot='cd $(git rev-parse --show-toplevel)'

alias please='sudo -EH $( history -p !! )'
alias fuck='sudo -EH $( history -p !! )'
alias fucking='sudo -EH'

cd() {
  builtin cd "$@" && ls
}
