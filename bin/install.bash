#!/bin/bash
#
# Add Sublime Text 2 aliases to shell config
#
#

set -e

# Where am I
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CONFIG=$HOME/.bashrc

MAGIC_LINE="source $DIR/sublime-shell-settings"

# could not figure out how to grep something which contains expanded env
# variables nicely
if grep -Fq "sublime-shell-settings" "$CONFIG"
then
    echo "Sublime Text settings already in shell start script"
else
    echo "Installing shell start script helpers"

    # Make sure there is prepending newline when inserting the command
    echo >> $CONFIG
    echo $MAGIC_LINE >> $CONFIG
fi

ST_USER=`$DIR/guess-sublime-config-location.bash`
echo "Overriding Sublime Text configs in $ST_USER"
if [ ! -e "$ST_USER" ] ; then
    echo "Could not figure out where Sublime Text config files are stored. Please see guess-sublime-config-location.bash"
    exit 1
fi

cp $DIR/../*.sublime-settings "$ST_USER"

echo "You are now good to start Sublime Text"
echo "Open a new shell to have subl command line command available and test it with command subl ."
