set PATH $XDG_CONFIG_HOME/bin $PATH

for file in git pyenv spark java
    source $XDG_CONFIG_HOME/fish/$file.fish
end

# default editor
set -xg EDITOR "vim"

