#!/bin/bash
#
# Guess what Sublime Text binary we are going to use
#
#

# OSX default
SUBL="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"

# Linux if extracted to the home folder
if [ ! -e "$SUBL" ] ; then
    # Linux
    SUBL="$HOME/Sublime Text 2/sublime_text"
fi

if [ ! -e "$SUBL" ] ; then
    SUBL=""
fi

echo $SUBL