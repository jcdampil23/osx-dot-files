# Dampil osx dotfiles
## Dependencies
- git
- xcode cli tools (you can get this just by installing git on osx)

## Why
I often have to reinstall my dev environment on multiple macos devices so I put all my installations in a singular script

## Installation

enable execution for the install.sh file
```
chmod +x ./install.sh
./install.sh
```

## Browser Modification
```
- Open firefox
- Enter `about:profiles` in url
- Open the default root folder
- Create a chrome directory
- mkdir chrome
- Copy the userChrome.css to the chrome directory
- Extensions
-- Tree Style Tabs
-- pitch-black-pink
-- vimuim-ff
```

## What gets installed
- NVM (Version manager for Node)
- Rust
- Golang
- Alacritty (Terminal Emulator)
- zellij (Terminal Workspace)
- brew (package manager)
    - neovim
        - run nvim in terminal
    - make (This is just incase)
    - fd (find replacement)
    - fzf (fuzzy finder)
    - bat (cat replacement)
    - jq (terminal JSON Processor)
    - switchaudio-osx (switch audio input via cmdline)
    - lazygit (terminal git ui)
        - run lazygit in terminal or <leader>gg in neovim 
    - yabai (window manager)
    - karabiner elements (keyboard remapper)
    - goku (karabiner element config builder)
    - skhd (keyboard remap for terminal commands)
    - sketchybar (better menubar)
    - scdoc (dependency for alacritty)
    - firefox
    - mongodb
    - htop
    - fira-mono-nerd-font
