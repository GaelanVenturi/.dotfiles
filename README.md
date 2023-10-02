# .dotfiles

These are all of my dotfiles that I use in daily work on Archlinux, either with WSL or natively on a machine. Feel free to copy these or use them on your own machine. Just make sure to give credit where credit is due. 

## Neovim configuration with Lazynvim

I've used [Lazynvim](https://www.lazyvim.org/) as my starter for my Neovim configuration. It provides a significant amount of usability out of the box, but still requires some tinkering out of the box to make it usable for me. 

## How I manage my dotfiles 

I use [stow](https://www.gnu.org/software/stow/) to manage my dotfiles. This provides the greatest flexibility for my workflow since I use Arch Linux on both WSL and bare metal. If you would also like to use stow to manage your dotfiles, feel free to look at Jake Wiesler's post [here](https://www.jakewiesler.com/blog/managing-dotfiles) and his corresponding [youtube video](https://www.youtube.com/watch?v=FHuwzbpTTo0). Either way, the way my dotfiles are organized is for compatibility and use of stow. 

## TO-DO 

- [ ] Add cool ASCII headers to each dotfile 
- [ ] Make a main install script that runs the install scripts for various programs so things are modular, rather than one big install script. 
- [ ] Add Rmarkdown to nvim config


