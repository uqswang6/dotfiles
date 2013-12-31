#!/bin/bash

CONF_NAME="Pacman Config"

echo "Working on ${CONF_NAME}"

_CONF_NAME=pacman.conf
_CONF_FILE=/etc/${_CONF_NAME}
_BCK_FILE=${_CONF_FILE}.bck
_LOC_FILE=$(pwd)/${_CONF_NAME}

echo "Checking if ${_CONF_FILE} exists"
if [ -f ${_CONF_FILE} ]
then
    echo "File found, saving to ${_BCK_FILE}"
    sudo mv ${_CONF_FILE} ${_BCK_FILE}
fi

echo "Linking dotfile ${_CONF_NAME} to ${_CONF_FILE}"
sudo ln -s ${_LOC_FILE} ${_CONF_FILE}


_CONF_NAME=mirrorlist
_CONF_FILE=/etc/pacman.d/${_CONF_NAME}
_BCK_FILE=${_CONF_FILE}.bck
_LOC_FILE=$(pwd)/pacman.d/${_CONF_NAME}

echo "Checking if ${_CONF_FILE} exists"
if [ -f ${_CONF_FILE} ]
then
    echo "File found, saving to ${_BCK_FILE}"
    sudo mv ${_CONF_FILE} ${_BCK_FILE}
fi

echo "Linking dotfile ${_CONF_NAME} to ${_CONF_FILE}"
sudo ln -s ${_LOC_FILE} ${_CONF_FILE}