set PATH $XDG_CONFIG_HOME/bin $PATH
set PATH "/usr/local/bin" $PATH

for file in git pyenv spark java exercism
    source $XDG_CONFIG_HOME/fish/$file.fish
end

# default editor
set -xg EDITOR "vim"

