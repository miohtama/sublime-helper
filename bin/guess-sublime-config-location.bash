#!/bin/bash
#
# Guess where Sublime Text config files are kept
#
#

# OSX default
SUBL="$HOME/Library/Application Support/Sublime Text 2/Packages/User"

# Linux if extracted to the home folder
if [ ! -d "$SUBL" ] ; then
    # Linux
    SUBL="$HOME/.config/sublime-text-2/Packages/user"
fi

if [ ! -d "$SUBL" ] ; then
    SUBL=""
fi

echo "$SUBL"