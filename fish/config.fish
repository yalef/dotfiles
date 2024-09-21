if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set EDITOR hx
set NNN_OPENER hx
set PATH $PATH:$HOME/.local/bin
alias ls="ls -AC --color --group-directories-first"
alias nnn="nnn -H -c -d"
