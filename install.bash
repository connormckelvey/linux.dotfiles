#!/usr/bin/env bash

# Initial Update
sudo apt-get update

# i3 Gaps
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install i3-gaps

# i3 Blocks
sudo apt-get install i3blocks

# Rofi
sudo apt-get install rofi

# rvxt-unicode terminal
sudo apt-get install rxvt-unicode

# Spotify
sudo snap install spotify

# Golang
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install golang-go

