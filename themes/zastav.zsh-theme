# This Theme is actually just a copy from the senny.zsh-theme from http://www.github.com/senny (thx mate:)
# I just added some different PROMPT stuff

#RVM settings
if [[ -s ~/.rvm/scripts/rvm ]] ; then
  RPS1="%{$fg[yellow]%}rvm:%{$reset_color%}%{$fg[red]%}\$(~/.rvm/bin/rvm-prompt)%{$reset_color%} $EPS1"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX%{$reset_color%}$(parse_git_dirty)%{$reset_color%}%{$fg[green]%}$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

PROMPT='%{$fg_bold[green]%}%B%n%b:%{$fg[cyan]%}[%~% ]$(git_custom_status)%{$reset_color%}%B%b$ '
