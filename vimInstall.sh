#!/bin/bash
# Update system
apt update -y

#Install needes apps
apt install -y git wget curl build-essential

#Download & Install Nvim
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
apt install -y ./nvim-linux64.deb
rm nvim-linux64.deb

#Colored output for ls
echo "alias ls='ls --color'" >> /root/.bashrc
source /root/.bashrc

#Prep for nvim config
mkdir -p /root/.config/

#VimPlug install
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Nodejs install
curl -fsSL https://deb.nodesource.com/setup_19.x | bash - &&\
apt-get install -y nodejs
#Copy my Git repo with Nvim config
#       TODO
cd /root/.config/
git clone https://github.com/melafir/nvim.git
cd ~
# Git push config
git config --global user.email "melektaus2019@gmail.com"
git config --global user.name "Melxorn"
# Git push via token https:\\GIT_TOREN@github.com/melafir/REPO_NAME.git
