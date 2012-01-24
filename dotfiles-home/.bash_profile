[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Aliasing local programs to Homebrew installs.
alias vim='/usr/local/Cellar/macvim/7.3-57/MacVim.app/Contents/MacOS/Vim'
alias vi='/usr/local/Cellar/macvim/7.3-57/MacVim.app/Contents/MacOS/Vim'
alias ctags='/usr/local/Cellar/ctags/5.8/bin/ctags'

alias gs='git status'
alias ga='git add'
alias gd='git diff'

if [ -f /usr/local/Cellar/bash-completion/1.3/etc/bash_completion ]; then
 . /usr/local/Cellar/bash-completion/1.3/etc/bash_completion
fi

# Adding Haskell's cabal bin file to PATH.
export PATH=~/.cabal/bin:$PATH

# Setting the default editor to VIM
export EDITOR=vim
