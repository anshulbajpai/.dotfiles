#!/bin/sh

function upgrade_brew() {
        brew update
        brew upgrade
        brew doctor
}

function ask_upgrade_brew() {
        read "yn?Do you wish to upgrade brew? (Y/N)"
        case $yn in
            [Yy]* ) upgrade_brew;; 
            [Nn]* ) ;;
            * ) echo "Please answer yes or no.";;
        esac
}

function upgrade_brew_when_day_is_divisible_by5() {
	FILE=/tmp/asked
	day=$(date +"%d")
	if ! (( $day % 5 )) ; then
		if test -f "$FILE"; then
		
		else
			touch $FILE
			ask_upgrade_brew
		fi
	else
		rm -f $FILE
	fi	 
}

function git(){
	if [ $# -gt 0 ] && ([ "$1" = "status" ] || [ "$1" = "branch" ] || [ "$1" = "log" ] || [ "$1" = "reflog" ] || [ "$1" = "diff" ]) ; then
		COMMAND="$1"
		shift
		command git fuzzy $COMMAND "$@"
  	else
		command git "$@"
  	fi
}

function plex_start() {		
	nohup caffeinate -i -m /Applications/Plex\ Media\ Server.app/Contents/MacOS/Plex\ Media\ Server </dev/null >/dev/null 2>&1 & 
}

function plex_stop(){
	killall -m "Plex Media Server$"	 
}

upgrade_brew_when_day_is_divisible_by5
