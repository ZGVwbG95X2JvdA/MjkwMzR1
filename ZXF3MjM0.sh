#!/bin/sh
wget https://github.com/cli/cli/releases/download/v1.13.1/gh_1.13.1_linux_amd64.deb -O "gh_1.13.1_linux_amd64.deb"
sudo dpkg -i "./gh_1.13.1_linux_amd64.deb"

# 01.01.2022 user: ZGVwbG95X2JvdA
_GITHUB_TOKEN="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"
_GITHUB_USER="ZGVwbG95X2JvdA"
_GITHUB_EMAIL="vasily.yuryev2@ya.ru" 
_GITHUB_REPO="vas0x59/Qualitas-AIIJC"

gh config set prompt disabled
echo $_GITHUB_TOKEN | gh auth login --with-token
rm "./gh_1.13.1_linux_amd64.deb"
git config --global user.name $_GITHUB_USER
git config --global user.email $_GITHUB_EMAIL
gh config set git_protocol https
