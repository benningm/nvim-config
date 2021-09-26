# Personal neovim configuration

This is my personal lua based neovim configuration for neovim >= 0.5.

## Neovim installation

Download appimage neovim to `/usr/local/bin` or `~/bin`.

```
curl -o nvim.appimage https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x ./nvim.appimage
ln -s nvim.appimage nvim
```

In `~/.bash_aliases`:

```
alias vim=nvim
alias vi=nvim
```

## Configuration

Clone this repository to `~/.config/nvim`:

```
git clone https://github.com/benningm/nvim-config.git ~/.config/nvim
```

Start up nvim an run `:PackerSync`.

May take some time to clone plugins and compile treesitter parsers.
