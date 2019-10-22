#!/bin/sh


function upgrade_brew() {
        brew update
        brew upgrade
        brew doctor
}

function ask_upgrade_brew() {
    while true; do
        read "yn?Do you wish to upgrade brew? (Y/N)"
        case $yn in
            [Yy]* ) upgrade_brew; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

ask_upgrade_brew
