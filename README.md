# Dotfiles repo

This repo contains my dotfiles aswell as the setup for my wsl environment.

## Setup environment

### Dotfiles

Cloning dotfiles folder

```bash
https://github.com/BijnensBram/dotfiles.git
```

Installing dotfiles

```bash
sudo apt install stow neovim tmux
stow install bash
stow install tmux
stow install neovim
```

### Python

Installing poetry for environment managment

```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
```

Installing often used packages

```bash
pip install numpy matplotlib scipy pandas seaborn ipython
```

### Rust

Installing rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Install [cargo-edit](https://github.com/killercup/cargo-edit) to have nice feature like `cargo-add`

```bash
cargo install cargo-edit --features vendored-openssl
```
