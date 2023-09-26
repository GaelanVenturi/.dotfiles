# Install default packages that are needed for everyday things

sudo pacman -S neovim git wget curl unzip fd ripgrep

# Install Nerd Fonts Fira Code so things look cool

sudo pacman -S ttf-firacode-nerd

# Install paru so that we aren't stuck with pacman and can use the AUR

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd

rm -rf paru

# Instal compilers

paru -S gcc nodejs npm

# Install starship

paru -S starship

# Install fish shell (better than bash and zsh)
paru -S fish

# Fisher package manager for fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# stow packages

stow git
stow nvim
stow fish
stow bash
stow zathura
stow wezterm

# stow kitty
