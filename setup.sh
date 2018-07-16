#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

git config --global user.name "wfortin136"
git config --global user.email "billy.fortin@vividseats.com"

brew update
brew upgrade
brew tap caskroom/versions

brew cask install iterm2
brew cask install wireshark
brew cask install spectacle #permissions
brew cask install spotify
brew cask install slack
#brew cask install virtualbox
brew cask install vagrant
brew cask install sketch
brew cask install 1password

brew install wget
brew install watch
brew install htop-osx
brew install sshuttle
brew install the_silver_searcher
brew install jq
brew install ngrep
brew install netcat 
brew install mtr
brew install nmap
brew install kubernetes-cli
brew install packer
brew install gpg
brew install aptly
brew install mysql
brew install postgresql

# tmux
brew install tmux

# vim
brew install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# oh-my-zsh
eval "$(curl -SL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &
brew install zsh-autosuggestions

# java
brew cask install java8
#echo "export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk" >> ~/.zshrc

brew install maven

# node and npm
brew install npm

# eclipse
brew cask install eclipse-java

# ansible
pip install ansible

# terraform
brew install terraform

# GO
brew install golang
export PATH=$PATH:$GOPATH/bin
go get -u github.com/kardianos/govendor
go get -u github.com/golang/lint/golint

#aws-cli
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
rm awscli-bundle.zip
rm -rf awscli-bundle

#Intellij
INTELLIJ_FILENAME="ideaIU-2018.1.5.dmg"
curl -SLO https://download-cf.jetbrains.com/idea/$INTELLIJ_FILENAME
hdiutil attach $INTELLIJ_FILENAME
cp -R /Volumes/IntelliJ\ IDEA/IntelliJ\ IDEA.app /Applications
hdiutil detach /Volumes/IntelliJ\ IDEA
rm $INTELLIJ_FILENAME

# ngrok
curl -SLO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip
unzip ngrok-stable-darwin-amd64.zip
rm ngrok
rm ngrok-stable-darwin-amd64.zip

# docker
curl -SLO https://download.docker.com/mac/stable/Docker.dmg
hdiutil attach Docker.dmg
cp -R /Volumes/Docker/Docker.app /Applications
hdiutil detach /Volumes/Docker
rm Docker.dmg

brew install logstash

# python
pip install virtualenv


# symlink config files from repo
ln -s ~/machine_setup/.gitconfig ~/.gitconfig
ln -s ~/machine_setup/.zshrc ~/.zshrc
ln -s ~/machine_setup/.vim ~/.vim
ln -s ~/machine_setup/.vimrc ~/.vimrc

# todo
# kube with username password
# ngrok token
# ssh
