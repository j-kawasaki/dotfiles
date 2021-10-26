source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# history関係
zplug "zsh-users/zsh-history-substring-search"
# タイプ補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi
# Then, source plugins and add commands to $PATH
zplug load


# alias
alias ls='ls -v --color=auto' # 色を付ける 
alias la='ls -al' # -a オプションと -l オプションの組み合わせ
alias ll='ls -l' # ファイルの詳細も表示
alias lla='ls -la' # -a オプションと -l オプションの組み合わせ
alias ..='cd ..' # 1つ前の階層に移動
alias bcd='cd $OLDPWD' # さっきまでいたディレクトリに移動
alias untar='tar xzvf' # tarファイルを解凍
alias vim='nvim'

# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000

# path設定

# powerline
GOPATH=$HOME/go
funcion powerline_precmd() {
    PS1="$($GOPATH/bin/powerline-go -error $? -jobs ${${(%):%j}:-0})"

    # Uncomment the following line to automatically clear errors after showing
    # them once. This not only clears the error for powerline-go, but also for
    # everything else you run in that shell. Don't enable this if you're not
    # sure this is what you want.

    #set "?"
}
function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    install_powerline_precmd
fi

# neovim
export XDG_CONFIG_HOME=~/.config

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



