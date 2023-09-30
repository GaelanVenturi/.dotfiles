# Install default packages that are needed for everyday things
sudo pacman -S git wget curl unzip fd ripgrep

# Install Nerd Fonts Fira Code so things look cool
sudo pacman -S ttf-firacode-nerd

# Install paru so that we aren't stuck with pacman and can use the AUR
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd

rm -rf paru

# Install compilers and languages
paru -S gcc nodejs npm gcc-fortran r

# GitHub CLI for better use
paru -S github-cli

# Neofetch for flexing
paru -S neofetch

# Install starship prompt for bash
paru -S starship

# Install neovim nightly from AUR
paru -S neovim-nightly-bin

# Install fish shell and fisher package manager
paru -S fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Install zsh and oh-my-zsh
paru -S zsh zsh-completions

chsh -s /bin/zsh

# oh-my-zsh and powerlevel10k
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chmod 744 ~/.oh-my-zsh/oh-my-zsh.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

# TMUX
paru -S tmux

# stow packages
stow git
stow nvim
stow zsh
stow bash
stow fish
stow zathura
stow wezterm
stow tmux
stow neofetch

# stow kitty
