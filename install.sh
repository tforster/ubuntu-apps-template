#!/usr/bin/env bash

# Usage
# curl -o- https://gist.githubusercontent.com/tforster/394d3865de02c9775c2c82ff0c7b1172/raw/install.sh | bash 

# Ensure we are current
sudo apt-get update
sudo apt-get upgrade

# NVM 
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
nvm install node

# ZSH Shell
sudo apt-get install zsh

# Oh My zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Git 
sudo apt-get install git 

# Spotify 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# Open a bunch of pages to click and download .deb files
if which xdg-open > /dev/null
then
  xdg-open https://code.visualstudio.com
  xdg-open https://slack.com/downloads/linux
  xdg-open https://about.mattermost.com/download/#mattermostApps
  xdg-open https://www.wps.com/download
fi
