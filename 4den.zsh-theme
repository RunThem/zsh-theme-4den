# Color configuration
USER_NAME_COLOR="green"
TIME_COLOR="yellow"
DIR_COLOR="cyan"

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$reset_color%}"

function color {
	echo "%{$fg_bold[$1]%}$2%{$reset_color%}"
}

PROMPT=$'$(color red ┌─) $(color $([[ $? != 0 ]] && echo "red" || echo "${USER_NAME_COLOR}") %n) $(color ${TIME_COLOR} %D{%I:%M:%S}) $(color ${DIR_COLOR} %~) $(git_prompt_info)$(hg_prompt_info)
$(color red └──)$(color yellow »)'