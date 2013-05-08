#!/bin/bash
#
# Add Sublime Text 2 aliases to shell config
#

# Where am I
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CONFIG=$HOME/.bashrc

MAGIC_LINE="source $DIR/sublime-settings"

# could not figure out how to grep something which contains expanded env
# variables nicely
if grep -Fq "sublime-settings" "$CONFIG"
then
    echo "Sublime Text settings already in shell start script"
else
    echo "Installing shell start script helpers"

    # Make sure there is prepending newline when inserting the command
    echo >> $CONFIG
    echo $MAGIC_LINE >> $CONFIG
fi