# Update and clean homebrow in one command
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'

# File navigation
alias ll='ls -al'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Open and update bash profile
alias bsh='code ~/.bash_profile'
alias src='source ~/.bash_profile'

# Yarn
alias ys='yarn start'
alias yt='yarn test'
alias yd='yarn dev'
alias yb='yarn build'
alias yi='yarn install'

# Miscellaneous
alias md='mkdir -p'
alias chrome='open -a "Google Chrome"'
alias fuckjs="rm -rf node_modules package-lock.json && npm i && npm start"

# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;32;40' # green

# Get Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Format to user@host:/path/to/directory (branch-name)
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\$(parse_git_branch)\[\033[m\]\$\n==> "

# Use Git completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Path
export PATH=$HOME/bin:$PATH
export PATH=./node_modules/.bin:$PATH
