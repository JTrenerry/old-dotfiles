#!/usr/bin/env bash
# Set up the environment for the project
# You have to run PlugInstall in vim
# You have to run CTRL + A + I in tmux
# For copilot you have to run :Copilot Setup


# Move scripts to /usr/local/bin and set permissions
chmod +x ./shell/*
sudo ln -f ./shell/* /usr/local/bin/

# Move services to /etc/systemd/system
sudo ln -f ./services/backup.service /etc/systemd/system/
sudo systemctl enable backup.service

# Reload systemd
sudo systemctl daemon-reload

# Move configs
ln -f ./conf/bashrc ~/.bashrc
ln -f ./conf/vimrc ~/.vimrc
ln -f ./conf/gitconfig ~/.gitconfig

# Tmux
ln -f ./conf/tmux.config ~/.tmux.conf
