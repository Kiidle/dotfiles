#!/bin/sh
DOTFILES_PATH=~/.dotfiles
CONFIGURATION_PATH=${DOTFILES_PATH}/configuration

if [ ! -f ~/.profile.mpsaved ]; then
    echo "Save current .profile to profile.mpsaved"
    mv ~/.profile ~/.profile.mpsaved
    ln -s ${CONFIUGURATION_PATH}/.profile ~/.profile
fi

ln -s ${CONFIGURATION_PATH}/.zshrc ~/.zshrc
ln -s ${CONFIGURATION_PATH}/.zsh ~/.zsh
#ln -s ${CONFIGURATION_PATH}/.buildout ~/.buildout
ln -s ${CONFIGURATION_PATH}/.gitignore_global ~/.gitignore_global
ln -s ${CONFIGURATION_PATH}/.gitconfig ~/.gitconfig

echo Done!
