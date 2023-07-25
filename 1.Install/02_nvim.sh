#!/usr/bin/env bash

# 02_nvim.sh
# repeat description of what the script should do

set -euo pipefail

# shellcheck source=/dev/null
. ../../2.2.Linux/1.Install/01_set_env_variables.sh

# Exit if command is already installed
if command -v nvim >>"$INSTALL_LOG"; then
    if [[ "$0" == "${BASH_SOURCE[0]}" ]]; then exit 0; else return 0; fi
fi

case $ID in
fedora)
    echo "$0 not implemented in $ID"
    exit 1
    ;;
linuxmint | ubuntu)
    ! [[ -f /tmp/nvim-linux64.tar.gz ]] && wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz -P /tmp
    ! [[ -d /tmp/nvim-linux64 ]] && sudo tar xvzf /tmp/nvim-linux64.tar.gz -C  /opt/
    sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/sbin/
    ;;
*)
    echo "Distribution $ID not recognized, exiting ..."
    exit 1
    ;;
esac

mkdir -p ~/.config/nvim/
ln -fs "$SOURCE_DIR"/02_vim/vimrc ~/.config/nvim/init.vim

