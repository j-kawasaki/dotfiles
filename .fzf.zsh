# Setup fzf
# ---------
if [[ ! "$PATH" == */home/kawasaki/.vim/dein/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/kawasaki/.vim/dein/repos/github.com/junegunn/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/kawasaki/.vim/dein/repos/github.com/junegunn/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/kawasaki/.vim/dein/repos/github.com/junegunn/fzf/shell/key-bindings.zsh"
