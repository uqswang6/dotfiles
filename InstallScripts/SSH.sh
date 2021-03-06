#!/bin/bash

PACKAGE_NAME="SSH"

############################ Initialize Script #################################

INSTALLSCRIPTS="InstallScripts"
UHOME=${HOME}


if [ ! -f ${INSTALLSCRIPTS}/${PACKAGE_NAME}.sh ]
then
    echo "This is a simple script without much idiot-proof logic"
    echo "Please run the script only from the top-dir of the repository"
    exit 1
fi


echo "Installing package ${PACKAGE_NAME}"

################################################################################

############################ Pre-Install Hook ##################################

echo "Checking if .ssh/ directory exists and is a symlink"

if [ ! -h "${UHOME}/.ssh" ]
then
    echo "The SSH directory either does not exist or is not a symlink."
    echo "Please ensure that you have symlinked and mounted the TrueCrypt volume"
    exit 1
fi
################################################################################

############################## File Block ######################################

_CONF_NAME=config
_CONF_FILE=${UHOME}/.ssh/${_CONF_NAME}
_BCK_FILE=${_CONF_FILE}.bck
_LOC_FILE=$(pwd)/${PACKAGE_NAME}/${_CONF_NAME}

echo "Checking if ${_CONF_FILE} exists"
if [ -f "${_CONF_FILE}" ]
then
    echo "File found, saving to ${_BCK_FILE}"
    mv "${_CONF_FILE}" "${_BCK_FILE}"
fi

echo "Linking dotfile ${_CONF_NAME} to ${_CONF_FILE}"
ln -s "${_LOC_FILE}" "${_CONF_FILE}"

################################################################################

############################## File Block ######################################

_CONF_NAME=known_hosts
_CONF_FILE=${UHOME}/.ssh/${_CONF_NAME}
_BCK_FILE=${_CONF_FILE}.bck
_LOC_FILE=$(pwd)/${PACKAGE_NAME}/${_CONF_NAME}

echo "Checking if ${_CONF_FILE} exists"
if [ -f "${_CONF_FILE}" ]
then
    echo "File found, saving to ${_BCK_FILE}"
    mv "${_CONF_FILE}" "${_BCK_FILE}"
fi

echo "Linking dotfile ${_CONF_NAME} to ${_CONF_FILE}"
ln -s "${_LOC_FILE}" "${_CONF_FILE}"

################################################################################
