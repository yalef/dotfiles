if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set EDITOR nvim
set PATH $PATH:$HOME/.local/bin:$HOME/Projects/lua-language-server/bin
set TERM st-256color

alias ls="ls -AC --color --group-directories-first"
alias nnn="nnn -H -d -A -e"
alias vim="nvim"
