Introduction
---------------

*sublime-helper* is a shell script collection to setup Sublime Text configuration files and command line aliases based on predefined templates.

.. contents ::

**Warning**: Running *install.bash* will override existing Sublime Text 2 configs if anything has been changed from the default settings. **Please backup your existing configuration files if you want to keep them before running this**.

The scripts are compatible with Linux and OSX.

Backup first
--------------

Find your Sublime Text config directory in Sublime Text menu *Preferences* > *Settings - User*.
Backup everything here.

Linux
------

Install Sublime Text on Linux and extract .tar.bz2 as **~/Sublime Text 2** folder (*Sublime Text 2* folder in your home directory).

**OTHER INSTALLATION LOCATIONS DON'T WORK** on Linux for now.

OSX
----

Use default Sublime Text 2 installation location.

Run Sublime Text once to install Package Control
--------------------------------------------------

Install Package Control inside Sublime Text.

Open Console in menu *View* > *Show Console*.

Copy-paste in::

    import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print('Please restart Sublime Text to finish installation')

Close Sublime Text.

Installing shell script and terminal helpers
-----------------------------------------------

Make sure Sublime Text has Package Control installed (see above) and Sublime Text is closed in this point.

The following will install config importer and shell helpers.
This will create *sublime-helper* folder in your home directory::

    sudo apt-get install git  # Or your distribution corresponding command
    cd ~
    git clone git://github.com/miohtama/sublime-helper.git
    ~/sublime-helper/bin/install.bash

Note: Currently supporting only setting up in ``~/sublime-helper`` as path is hardcoded to ``.bashrc`` helper

Usage
---------

Go to any folder.

Type::

    subl .

To open the current folder as a Sublime Text project - you will have sidebar to browse files.

When you start Sublime Text for the first time, after the script has updated *Package Control.sublime-settings* file,
you will get various automatically opening tabs telling you that this and that plugin has been installed.

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

Notes
-------------

Looks like *theme* setting export and import causes issues on pristine setup. Theme is not fetched correctly?

Don't try to transfer font setting if the destination font is missing.
Setup `Source Code Pro manually <http://opensourcehacker.com/2012/10/07/go-pro-and-your-eyes-will-thank-you/>`_.

Author
--------------

Mikko Ohtamaa (`blog <https://opensourcehacker.com>`_, `Facebook <https://www.facebook.com/?q=#/pages/Open-Source-Hacker/181710458567630>`_, `Twitter <https://twitter.com/moo9000>`_, `Google+ <https://plus.google.com/u/0/103323677227728078543/>`_)


