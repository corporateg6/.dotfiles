#!/bin/bash

# Store the output of 'uname' in the OUTPUT variable
OUTPUT=$(uname)

# Check if the uname output is not Linux, and if so, log an error message and exit
if [ $OUTPUT != "Linux" ]
then
    echo "ERROR - Linux OS not found" >> ./linuxsetup.log
    exit
fi

# Make a /.TRASH/ directory in home if it doesn't exist
mkdir -p ~/.TRASH

#Check if ~/.nanorc exists and if so, output a message to the setup log and change it's name
if [ -f ~/.nanorc ]
then
    mv ~/.nanorc ~/.bup_nanorc
    echo "NOTICE - Existing ~/.nanorc file found, renaming to ~/.bup_nanorc" >> ./linuxsetup.log
fi

#Create ~/.nanorc using my template with customizations
cat ./etc/nanorc > ~/.nanorc

#update ~/.bashrc to include my customizations
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
