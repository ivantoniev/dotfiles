
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export PATH="$(brew --prefix qt)/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion