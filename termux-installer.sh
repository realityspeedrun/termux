#!/bin/sh
processnum=7

apt update && apt upgrade
echo "Upadating repositories (1/$processnum)"
termux-setup-storage
echo "Storage access enabled. (2/$processnum)"

pkg install root-repo unstable-repo x11-repo
echo "Root, unstable and x11 repositories installed (3/$processnum)"

pkg install proot zsh neovim lf openssh man rsync git wget man python coreutils zip unzip neofetch
echo "Packages installed (4/$processnum)"

chsh -s $(which zsh)
echo "ZSH set as default shell (5/$processnum)"

# oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo "Oh-my-ZSH installed (6/$processnum)"

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
# ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
echo "Powerlevel10k installed (7/$processnum)"

