#!/bin/sh

function upgrade_brew() {
        brew update
        brew upgrade
        brew doctor
}

function ask_upgrade_brew() {
        read "yn?Do you wish to upgrade brew? (Y/N)"
        case $yn in
            [Yy]* ) upgrade_when_day_is_divisible_by5;; 
            [Nn]* ) ;;
            * ) echo "Please answer yes or no.";;
        esac
}

function upgrade_brew_when_day_is_divisible_by5() {
	day=$(date +"%d")
	if ! (( $day % 5 )) ; then
		ask_upgrade_brew
	fi	 
}

upgrade_brew_when_day_is_divisible_by5
