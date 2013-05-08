#!/bin/bash
#
# Guess what Sublime Text binary we are going to use
#
#

SUBL="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"

if [ ! -e "SUBL" ] ;
    # Linux
    SUBL="$HOME/Sublime Text 2/sublime_text"
fi

if [ ! -e "$SUBL" ] ;
    SUBL=""
fi

echo $SUBL