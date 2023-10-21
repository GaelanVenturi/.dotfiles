# .dotfiles

These are all of my dotfiles that I use in daily work on Archlinux, either with WSL or natively on a machine. Feel free to copy these or use them on your own machine. Just make sure to give credit where credit is due. 

## File Tree
<!-- BEGIN FILE TREE -->
```text
.
├── .gitignore
├── LICENSE
├── Pipfile
├── Pipfile.lock
├── README.md
├── file_tree.py
├── install.sh
├── stow.sh
├── zsh_install.sh
├── bash/
└── .bashrc
├── nvim/
│   ├── .config/
│   │   ├── nvim/
│   │   │   ├── .gitignore
│   │   │   ├── .neoconf.json
│   │   │   ├── LICENSE
│   │   │   ├── README.md
│   │   │   ├── init.lua
│   │   │   ├── lazy-lock.json
│   │   │   ├── lazyvim.json
│   │   │   ├── stylua.toml
│   │   │   ├── lua/
│   │   │   │   ├── plugins/
│   │   │   │   │   ├── colorscheme.lua
│   │   │   │   │   ├── latex.lua
│   │   │   │   │   ├── markdown.lua
│   │   │   │   │   ├── neo-tree.lua
│   │   │   │   │   ├── rmarkdown.lua
│   │   │   │   └── zen-mode.lua
│   │   │   │   ├── config/
│   │   │   │   │   ├── autocmds.lua
│   │   │   │   │   ├── keymaps.lua
│   │   │   │   │   ├── lazy.lua
│   │   │   │   └── options.lua
├── tmux/
└── .tmux.conf
├── wezterm/
└── .wezterm.lua
├── zathura/
│   ├── zathura/
│   └── zathurarc
├── starship/
│   ├── .config/
│   └── starship.toml
├── neofetch/
│   ├── .config/
│   │   ├── neofetch/
│   │   └── config.conf
├── git/
└── .gitconfig
├── zsh/
└── .zshrc
├── p10k/
└── .p10k.zsh
```
<!-- END FILE TREE -->

## Neovim configuration with Lazynvim

I've used [Lazynvim](https://www.lazyvim.org/) as my starter for my Neovim configuration. It provides a significant amount of usability out of the box, but still requires some tinkering out of the box to make it usable for me. 

## How I manage my dotfiles 

I use [stow](https://www.gnu.org/software/stow/) to manage my dotfiles. This provides the greatest flexibility for my workflow since I use Arch Linux on both WSL and bare metal. If you would also like to use stow to manage your dotfiles, feel free to look at Jake Wiesler's post [here](https://www.jakewiesler.com/blog/managing-dotfiles) and his corresponding [youtube video](https://www.youtube.com/watch?v=FHuwzbpTTo0). Either way, the way my dotfiles are organized is for compatibility and use of stow. 


