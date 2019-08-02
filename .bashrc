
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export PATH="$(brew --prefix qt)/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
