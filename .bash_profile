cd $HOME
#if [ $SHLVL = 1 ] ; then
#  xset -r 49  > /dev/null 2&>1
#    (fcitx-autostart > /dev/null 2&>1 &)
#fi

export DISPLAY=localhost:0.0
export LIBGL_ALWAYS_INDIRECT=1
#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#export XMODIFIERS=@im=fcitx
#export DefaultIMModule=fcitx

# hyperのicon-tab-plusで必要な設定
case "$TERM" in
    xterm*|rxvt*)
        PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
        show_command_in_title_bar()
        {
            case "$BASH_COMMAND" in
                *\033]0*)
    ;;
    *)
        echo -ne "\033]0;${BASH_COMMAND} - ${PWD##*/}\007"
        ;;
esac

}
 trap show_command_in_title_bar DEBUG
 ;;
 *)
 ;;
 esac

# Path追加
export PATH="$HOME/bin/windows:$PATH"
export PATH="$HOME/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/mnt/c/Users/j-kawasaki/Anaconda3":$PATH
export PATH="/mnt/c/Users/j-kawasaki/Anaconda3/Scripts":$PATH

eval "$(pyenv init -)"
# ctf-tools: PATH setup
export PATH=$HOME/bin/ctf-tools/bin:$PATH

if [[ -f ~/.bashrc ]] ; then
    . ~/.bashrc
fi

#うまく動かないのでfishで実装
# cdの後にlsする
#cd (){
#    builtin cd "$@" && ls
#}

# fishをインタラクティブシェルにする
# いらないならコメントアウトで 
# 条件分岐する理由: https://qiita.com/tak-onda/items/a90b63d9618d6b15c18c
#case $- in
#    *i*) exec zsh;;
#      *) return;;
#esac
