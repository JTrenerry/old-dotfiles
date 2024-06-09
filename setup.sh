#!/usr/bin/env bash
# Set up the environment for the project

# Move scripts to /usr/local/bin and set permissions
chmod +x ./shell/*
sudo cp -r ./shell/* /usr/local/bin/

# Move services to /etc/systemd/system
sudo cp -r ./services/* /etc/systemd/system/

# Reload systemd
sudo systemctl daemon-reload

# Move configs
cp ./conf/.bashrc ~/.bashrc
cp ./conf/.vimrc ~/.vimrc
cp ./conf/tmux.config ~/.config/tmux/tmux.config
cp ./conf/.gitconfig ~/.gitconfig
cp ./conf/init.vim ~/.config/nvim/init.vim

