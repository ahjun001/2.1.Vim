#!/usr/bin/env bash

set -euo pipefail

# shellcheck source=/dev/null
. ~/Documents/Github/2.1.Linux/1.Install/01_set_env_variables.sh

S_name() {
    local S_NAME="${BASH_SOURCE[0]}"
    echo "${S_NAME#/home/perubu/Documents/Github/}"
}
SCRIPT_NAME=$(S_name)
$DBG -e now in "$SCRIPT_NAME\n" "$0"

# Exit if program is already installed
PROGRAM=vim
if command -v "$PROGRAM" >/dev/null; then
    $DBG "$SCRIPT_NAME" "$PROGRAM" is already installed
    [[ "$0" == "${BASH_SOURCE[0]}" ]] && exit 0 || return 0
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

$RUN "$PROGRAM"
