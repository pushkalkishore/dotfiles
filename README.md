# Dotfiles

Personal dotfiles for macOS development environment.

## What's Included

| Tool | Config |
|------|--------|
| Zsh | `.zshrc`, `.zprofile`, `.p10k.zsh` |
| Vim | `.vimrc`, `.vim/` |
| Kitty | `.config/kitty/kitty.conf` |
| Starship | `.config/starship.toml` |
| Karabiner | `.config/karabiner/karabiner.json` |
| Ranger | `.config/ranger/` |
| btop | `.config/btop/btop.conf` |
| Neofetch | `.config/neofetch/config.conf` |
| VS Code (Vim) | `vscodevim/settings.json`, `vscodevim/keybindings.json` |
| Raycast | `.config/raycast/config.json` |
| Git | `.gitconfig` |

## Shell Setup

- **Prompt**: Powerlevel10k
- **Plugins**: zsh-autosuggestions, zsh-syntax-highlighting
- **Tools**: exa, bat, fzf, jump, ranger, tmux
- **Python**: virtualenvwrapper with Python 3

### Key Aliases

```
ls → exa (with icons)
cat → bat
r → ranger
v → vim
g → git
t → tmux
j → jump (autojump)
^f → fzf directory picker
```

## Scripts

- `new_cd` — fuzzy find and cd into directories using fzf
- `launch-ranger.sh` — Raycast script to open ranger in iTerm
- `new-safari-window.sh` — Raycast script to open a new Safari window
- `new-arc-window.sh` — Raycast script to open a new Arc window

## Vim Plugins

- vim-easy-align
- vim-css-color
- lightline.vim

## Installation

Clone and symlink the configs to your home directory:

```bash
git clone https://github.com/pushkalkishore/dotfiles.git ~/dotfiles

# Example symlinks
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.config/kitty ~/.config/kitty
ln -sf ~/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -sf ~/dotfiles/.config/karabiner ~/.config/karabiner
```

## Dependencies

Install via Homebrew:

```bash
brew install exa bat fzf jump ranger tmux neofetch btop starship
brew install zsh-autosuggestions zsh-syntax-highlighting
```
