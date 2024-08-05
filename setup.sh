#!/usr/bin/env bash
# Set up the environment for the project
# You have to run PlugInstall in vim
# You have to run CTRL + A + I in tmux
# For copilot you have to run :Copilot Setup


# Move scripts to /usr/local/bin and set permissions
chmod +x ./shell/*
sudo cp -r ./shell/* /usr/local/bin/

# Move services to /etc/systemd/system
sudo cp -r ./services/backup.service /etc/systemd/system/
sudo systemctl enable backup.service

# Reload systemd
sudo systemctl daemon-reload

# Move configs
cp ./conf/.bashrc ~/.bashrc
cp ./conf/.vimrc ~/.vimrc
cp ./conf/.gitconfig ~/.gitconfig
cp ./conf/init.vim ~/.config/nvim/init.vim

# Tmux
cp ./conf/tmux.config ~/.config/tmux/tmux.config
cp ./conf/tmux.reset.config ~/.config/tmux/tmux.reset.conf
rm -f ~/.tmux.conf
ln -s ~/.config/tmux/tmux.config ~/.tmux.conf

# Package managers
# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install tmux plugin manager
if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
