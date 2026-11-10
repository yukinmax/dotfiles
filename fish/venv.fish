function __auto_venv --on-variable PWD
    # Leave the venv when we walk out of its tree.
    if set -q VIRTUAL_ENV
        and not string match -q -- "$VIRTUAL_ENV*" $PWD
        and functions -q deactivate
        deactivate
    end
    # Enter a .venv when we walk into a project that has one.
    if not set -q VIRTUAL_ENV
        and test -f .venv/bin/activate.fish
        source .venv/bin/activate.fish
    end
end
