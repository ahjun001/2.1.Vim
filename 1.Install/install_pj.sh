#!/usr/bin/env bash

set -euo pipefail

# shellcheck source=/dev/null
. ~/Documents/Github/2.1.Linux/1.Install/01_set_env_variables.sh

$DBG -e '\n'"${BASH_SOURCE[0]#/home/perubu/Documents/Github/}"

# Exit if APP is already installed
APP=vim
if command -v "$APP" >/dev/null; then
    $DBG $'\t'"$APP" is already installed
    [[ "$0" == "${BASH_SOURCE[0]}" ]] && exit 0 && return 0
fi

case $ID in
fedora)
    sudo dnf install vim-X11
    sudo dnf install vim-default-editor --allowerasing
    ;;
linuxmint | ubuntu)
    sudo apt update && sudo apt install vim-gtk3
    ;;
*)
    echo "Distribution $ID not recognized, exiting ..."
    exit 1
    ;;
esac

LINKS="${0#/*}"/links_pj.sh
[[ -f $LINKS ]] && $LINKS

$RUN "$APP"

