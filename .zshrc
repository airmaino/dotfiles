if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export XDG_DATA_HOME=$HOME/.local/share
export ZSH="$HOME/.config/zsh/.oh-my-zsh"
export ZK_NOTEBOOK_DIR="$HOME/v/zk"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=( git zsh-syntax-highlighting zsh-autosuggestions zsh-vi-mode)

bindkey -M vicmd '^F' forward-char
bindkey -M viins '^F' autosuggest-accept
bindkey -M vicmd '^F' autosuggest-accept

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## ALIASES ##
alias n='nvim'
alias py='python'
alias cal='LC_TIME=ru_RU.UTF-8 cal'
alias run='gcc ~/justc/main.c -o ~/justc/main && ~/justc/main'
alias pipes='pipes.sh -p 8 -t 6 -c 2 -c 6 -f 80 -s 10 -r 1700 -R'
alias cmatrix='cmatrix -C cyan -b'

alias date='date "+%H:%M %y-%m-%d"'
alias gv="wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null | awk '{printf \"%d\\n\", \$2*100}'"
alias b="upower -i \$(upower -e | grep BAT) | awk -F': *' '/percentage/ {print \$2}' | tr -d '%'"
alias kbd="hyprctl devices -j | jq -r '.keyboards[] | select(.main==true) | .active_keymap' | awk '{print tolower(substr(\$1,1,2))}'"

ws() {
	active=$(hyprctl activeworkspace -j | jq -r '.id')

	hyprctl workspaces -j | jq -r '.[] | "\(.id) \(.windows)"' | sort -n | while read id windows; do
		if [ "$id" = "$active" ]; then
			printf "[%s] " "$id"
		elif [ "$windows" -gt 0 ]; then
			printf "(%s) " "$id"
		else
			printf "%s " "$id"
		fi
	done

	echo
}

st() {
	active=$(hyprctl activeworkspace -j | jq -r '.id')

	first=1
	hyprctl workspaces -j | jq -r '.[] | "\(.id) \(.windows)"' | sort -n | while read id windows; do
		if [ "$first" -eq 0 ]; then
			printf " "
		fi
		first=0

		if [ "$id" = "$active" ]; then
			printf "\e[32m[%s]\e[0m" "$id"
		elif [ "$windows" -gt 0 ]; then
			printf "\e[36m(%s)\e[0m" "$id"
		else
			printf "%s" "$id"
		fi
	done

	printf "; "

	printf "\e[1m\e[36m%s\e[0m; " "$(date)"

	printf "\e[32m%s\e[0m; \e[36m%s\e[0m; \e[32m%s\e[0m\n" "$(kbd)" "$(gv)" "$(b)"
}

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

# VI-MODE
KEYTIMEOUT=1
bindkey -v

ZVM_PROMPT_MODE="INS"

function zvm_after_init() {
	ZVM_PROMPT_MODE="NOR"
}

function zvm_after_select_vi_mode() {
	case $ZVM_MODE in
		NORMAL) ZVM_PROMPT_MODE="NOR" ;;
		INSERT) ZVM_PROMPT_MODE="INS" ;;
		VISUAL) ZVM_PROMPT_MODE="VIS" ;;
	esac
	p10k reload
}

source $ZSH/oh-my-zsh.sh

# RGO #
rgo () {
	local editor=${2:-nvim}

	local sel=$(rg --line-number --no-heading --color=never "$1" \
		| fzf --height 50% --border --delimiter ':' \
		--preview 'bat --style=numbers --color=always --highlight-line {2} {1}' \
		--preview-window 'right:60%' ) || return

	local file=${sel%%:*}
	local rest=${sel#*:}
	local line=${rest%%:*}

	case "$editor" in
		nvim)  nvim +"$line" "$file" ;;
		bat)  bat --style=numbers --highlight-line "$line" "$file" ;;
		*)    "$editor" "$file" ;;
	esac
}  


# zoxide #
eval "$(zoxide init zsh)"

# FZF #
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

export FZF_DEFAULT_OPTS="
  --highlight-line
  --info=inline-right
  --ansi
  --layout=reverse
  --border=rounded
  --color=bg+:#252A3C
  --color=bg:#15161E
  --color=border:#2A334A
  --color=fg+:#737AA2
  --color=fg:#565F89
  --color=gutter:#15161E
	--color=header:#FF007C
  --color=hl+:#7DCFFF
  --color=hl:#9ECE6A
  --color=info:#7DCFFF
  --color=marker:#6ECE6A
  --color=pointer:#7DCFFF
  --color=prompt:#7DCFFF
  --color=query:#7DCFFF:bold
  --color=scrollbar:#6ECE6A
  --color=separator:#2A334A
  --color=spinner:#6ECE6A
"


st
