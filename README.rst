Introduction
---------------

Setup Sublime Text configuration files and command line aliases based on predefined templates.

.. contents :: :local:

**Warning**: Will override existing Sublime Text 2 configs if anything has been changed from the default settings.
**Please backup your existing configuration files if you want to keep them before running this**.

Backup first
--------------

Find your Sublime Text config directory in Sublime Text menu *Preferences* > *Settings - User*.
Backup everything here.

Linux
------

Install Sublime Text on Linux and extract .tar.bz2 as *~/Sublime Text 2* folder (folder in your home directory)

OSX
----

Use default Sublime Text 2 installation location.

Installing shell script and terminal helpers
-----------------------------------------------

Install shell helpers::

    sudo apt-get install git  # Or your distribution corresponding command
    # Note: Currently supporting only setting up in ~/sublime-helper as path is hardcoded to .bashrc helper
    cd ~
    git clone git@github.com:miohtama/sublime-helper.git
    ~/sublime-helper/bin/setup.sh

Features
----------

- Setup *.bashrc* aliases for *subl* command.

- Alias *nano* and *gedit* to run Sublime Text instead

- `Install bunch of packages through Package Control <https://github.com/miohtama/sublime-helper/blob/master/Package%20Control.sublime-settings>`_

- Setup `sane tab policy <http://opensourcehacker.com/2012/05/13/never-use-hard-tabs/>`_

- `Misc. settings <https://github.com/miohtama/sublime-helper/blob/master/Preferences.sublime-settings>`_

- `More info in the related blog post <http://opensourcehacker.com/2012/05/11/sublime-text-2-tips-for-python-and-web-developers/#Add_CodeIntel_autocompletion_support>`_

Shell notes
---------------

By default, Bash shell *.bashrc* is fixed to enable *subl* command.
If you are using any other shell please add the command along the following lines to your shell config file::

    source $HOME/sublime-helper/bin/sublime-shell-settings

Author
--------------

Mikko Ohtamaa (`blog <https://opensourcehacker.com>`_, `Facebook <https://www.facebook.com/?q=#/pages/Open-Source-Hacker/181710458567630>`_, `Twitter <https://twitter.com/moo9000>`_, `Google+ <https://plus.google.com/u/0/103323677227728078543/>`_)


