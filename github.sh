#!/bin/bash

ssh-agent -s

ssh-keygen -t rsa -b 4096 -C "billy.fortin@vividseats.com" -f ~/.ssh/github

sleep 1

echo "Host *
 AddKeysToAgent yes
 UseKeychain yes
 IdentityFile ~/.ssh/github" >> ~/.ssh/config

ssh-add -K ~/.ssh/github
