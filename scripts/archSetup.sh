# INITIAL UPDATE 
sudo pacman -Syyu --noconfirm 

# INSTALL paru 
sudo pacman -S --needed base-devel --noconfirm
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# INSTALL ALL SOFTWARE 
paru -S --noconfirm signal-desktop brave-nightly-bin zoom spotify dropbox \ 
  neovim nodejs npm obsidian-appimage nerd-fonts-complete-starship \ 
  protonvpn zathura zathura-cb zathura-djvu zathura-pdf-mupdf \ 
  steam starship neofetch github-cli todoist-appimage texlive-most \ 
  r gcc-fortran rstudio-desktop-bin 
