# dotfiles

The goal of this dotfiles setup is to provide a fully portable shell with all
cool things with a single entry point. That means that it won't crap all over
your home directory with a bunch of dot-dirs and symlinks like other dotfile
ditributions.

## Installation

Clone this repo somewhere:

```sh
git clone git@github.com:yukinmax/dotfiles.git Projects/dotfiles
```

Change your shell to shell from dotfiles:

```sh
sudo chsh -s /path/to/dotfiles/shell your_username
```

Run installation script:

```sh
./scripts/install
```

And you're done.

## Uninstall

Change your shell to whatever it was before:

```sh
chsh -s /bin/bash
```

## Requirements

The setup implies that you're running OSX with fish shell installed and the
shell is available at `/usr/bin/local/fish`.

## Additional Features

### iTerm2 Settings

If you are using iTerm2 you can load/save your settings:
- iTerm -> Preferences -> General
- Check "Load preferences from a custom folder or URL" under preferences section
- Specify /path/to/dotfiles/support/iterm2/
- Restart iTrem2
