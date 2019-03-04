# ログイン時の挨拶をなくす
set fish_greeting

. ~/.config/fish/aliases.fish
#. ~/.config/fish/Keybinds.fish

# cdの後にlsする
function cd
  builtin cd $argv
  ls
end

