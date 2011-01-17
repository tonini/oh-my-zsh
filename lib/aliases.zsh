# cd
alias ..='cd ..'

# ls
alias ls="ls -F"
alias l="ls -lAh"
alias ll="ls -l"
alias la='ls -A'

# git
alias gl='git log'
alias glg='git log --graph --oneline'
alias gpl='git pull --rebase'
alias gps='git push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias changelog='git log `git log -1 --format=%H -- CHANGELOG*`..; cat CHANGELOG*'

# rails
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias tlog='tail -f log/development.log'
alias migrate='rake db:migrate db:test:clone'
alias rc='rails c'
alias ras='rails s'
alias rg='rails g'
alias it="echo '\e[44mStarting Infinity Test with: --rspec\e[0m' &&infinity_test --rspec"
alias cpw='cucumber -p wip'

# Show history
alias history='fc -l 1'
