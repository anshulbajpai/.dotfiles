#!/bin/sh


function upgrade_brew() {
	brew update
	brew upgrade
	brew doctor			
}

while true; do
    read -p "Do you wish to upgrade brew? (Y/N)" yn
    case $yn in
        [Yy]* ) upgrade_brew; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
