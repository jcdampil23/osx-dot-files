# Copy Configs
cp -r config/alacritty/ ~/.config
cp -r config/nvim/ ~/.config

# After copying this chmod -x ./plugins
cp -r config/sketchybar/ ~/.config/
sudo chmod -R +x ~/.config/sketchybar/plugins

cp -r config/yabai/ ~/.config/
cp -r config/zellij/ ~/.config/
cp -r config/skhd/ ~/.config/
cp config/karabiner.edn ~/.config/

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> /Users/$(whoami)/.zprofile

eval "$(/usr/local/bin/brew shellenv)"

# Brew dependencies

# you know it
brew install neovim

# just in case
brew install make

# find but better
brew install fd

# Fuzzy Finder
brew install fzf

# Cat but better
brew install bat

# Cmd JSON processor
brew install jq

# audio switcher in terminal
brew install switchaudio-osx

# git ui in terminal
brew install jesseduffield/lazygit/lazygit

# window manager
brew install koekeishiya/formulae/yabai

# shortcuts for yabai
brew install koekeishiya/formulae/skhd

# Menubar looks better
brew tap FelixKratz/formulae
brew install sketchybar

# Alacritty Dependency
brew install scdoc

# browser
brew install --cask firefox

# install Karabiner Elements (Keyboard Remap)
brew install --cask karabiner-elements
# easier karabiner elements easier config
brew install yqrashawn/goku/goku
brew services start yqrashawn/goku/goku

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
install latest node
nvm install node

# install go
brew install go

# install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
# update rust
rustup override set stable
rustup update stable

#install mongodb
brew tap mongodb/brew
brew update
brew install mongodb-community@7.0

#install Alacritty
git clone https://github.com/alacritty/alacritty.git
cd alacritty
make app
cp -r target/release/osx/Alacritty.app /Applications/

# install zellij
cargo install --locked zellij

# others
brew install htop

# Nerd Fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-mono-nerd-font


# RICE
yabai --start-service
skhd --start-service
brew services start sketchybar

goku
