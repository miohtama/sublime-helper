#!/bin/sh

set -e

# Various shareable settings files
cp "/Users/mikko/Library/Application Support/Sublime Text 2/Packages/User/Package Control.sublime-settings" .
cp "/Users/mikko/Library/Application Support/Sublime Text 2/Packages/User/Distraction Free.sublime-settings" .
cp "/Users/mikko/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings" .

# subl command for aliwas
cp ~/tools/zsh-scripts/bin/subl-wrapper .

# PythonTidy settings file used with PythonTidy plugin
# (Line wrap disabled)
cp ~/.pythontidy.xml .