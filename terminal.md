Restore Terminal
===

1. Get an Itunes account

1. Install XCode from the App Store

        which gcc

1. Install the Homebrew package manager

        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
        brew doctor

2. Install a recent version of git

        brew install git

2. Configure git following [Github's instructions](https://help.github.com/articles/set-up-git#set-up-git)

3. Download these checklists and some elusive configuration files.  Please update them as you go, and push when you're done.

        git clone https://github.com/thisrod/theglist.git $HOME/theglist

5. Install a Fortran compiler

        brew install gfortran

6. Install [TeX](http://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg)

7. Install [Lyx](http://www.lyx.org/Download#toc4)

8. Install the RevTeX layout for Lyx

        cp $HOME/theglist/etc/revtex4-1.layout /Applications/LyX.app/Contents/Resources/layouts/

8. Run Lyx, and select LyX → Reconfigure

9. Configure the AD printers at System Preferences → Printers & Scanners → Add → IP.  The address is 172.22.10.24; use the name "5030".

10. Install [Dropbox](https://www.dropbox.com/)

11. Install pyenv (see the [Restore Python Checklist](python.md))

        brew install pyenv

4. Install the dotfiles

        tar -cf - -C $HOME/theglist/home/ . | tar -xf - -C $HOME

13. Quit your shell and start a new one
