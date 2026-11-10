set PATH $XDG_CONFIG_HOME/bin $PATH
set PATH "/opt/homebrew/bin" $PATH

for file in git homebrew python pyenv venv spark java exercism
    source $XDG_CONFIG_HOME/fish/$file.fish
end

# default editor
set -xg EDITOR "vim"

