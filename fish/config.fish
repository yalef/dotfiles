if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
