#!/bin/bash -e

# non-interactive
export DEBIAN_FRONTEND=noninteractive
echo 'APT::Get::Assume-Yes "true";' | sudo tee -a /etc/apt/apt.conf.d/90non-interactive
echo 'DPkg::Options "--force-confnew";' | sudo tee -a /etc/apt/apt.conf.d/90non-interactive

# repo
sudo curl -sSL https://storage.googleapis.com/git-repo-downloads/repo -o /usr/local/bin/repo
sudo chmod a+x /usr/local/bin/repo

# timezone
# sudo ln -sf /usr/share/zoneinfo/EET /etc/localtime

# swap
#sudo dd if=/dev/zero of=/swap count=6144 bs=1M
#sudo chmod 600 /swap
#sudo mkswap /swap
#sudo swapon /swap
#sudo sysctl -w vm.swappiness=80

# git
git config --global user.name "AnggaR96s"
git config --global user.email "kiritoclasher@gmail.com"
git config --global color.ui auto
git config --global log.date iso

# ccache
ccache -M 50G
