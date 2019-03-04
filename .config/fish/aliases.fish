# コマンド定義
alias bcd 'dc $dirprev[-1]'
alias ls 'ls -CF'
alias ll 'ls -AlFh --show-control-chars --color=auto'
alias la 'ls -CFal'
alias mv 'mv -i'
alias rm 'rm -i'
alias cp 'cp -i'
alias sc 'screen'
alias ps 'ps --sort=start_time'
alias .. 'cd ..'

# hyperのwow機能(ネタ機能)
alias wow 'echo command not found: wow'

# cmdで開かないと行けないプログラム
alias hyper 'cmd.exe /c hyper'
alias arp 'cmd.exe /c arp'