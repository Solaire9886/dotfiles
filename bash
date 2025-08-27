# The aliases and evals for my .bashrc
# MAKE SURE YOU HAVE EVERYTHING INSTALLED CORRECTLY BEFORE ADDING THESE

# Aliases

# Copyparty
alias copyparty="python3 ~/copyparty-sfx.py"

# Lsd
alias ls='lsd'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Evals

# Starship
eval "$(starship init bash)"

# Zoxide
eval "$(zoxide init bash)"

# Fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
