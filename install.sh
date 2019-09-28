#!/bin/bash

DIR="$(dirname "${BASH_SOURCE[0]}" )"
cp "${DIR}/gitconfig" "${HOME}/.gitconfig"
cp "${DIR}/gitignore" "${HOME}/.gitignore"
cp "${DIR}/tmux.conf" "${HOME}/.tmux.conf"
cp "${DIR}/vimrc" "${HOME}/.vimrc"
cp -a "${DIR}/vim" "${HOME}/.vim"
