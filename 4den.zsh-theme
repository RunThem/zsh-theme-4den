ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$reset_color%}"

function color {
	echo "%{$fg_bold[$1]%}$2%{$reset_color%}"
}

# Color configuration
local c_user_host="green"
local c_time="yellow"
local c_dir="cyan"

PROMPT=$'$(color red ╭─) $(color ${c_user_host} %n) $(color ${c_time} %D{%I:%M:%S}) $(color ${c_dir} %~) $(git_prompt_info)$(hg_prompt_info)
$(color red ╰─) '