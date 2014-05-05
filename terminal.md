Restore Terminal
===

1. Get an Itunes account

1. Install XCode from the App Store

        which gcc

2. Install [Firefox](http://www.mozilla.org/)

2. Install an ArXiv search plugin

1. Install the Homebrew package manager

        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
        brew doctor

2. Install a recent version of git

        brew install git

2. Configure git following [Github's instructions](https://help.github.com/articles/set-up-git#set-up-git)

3. Download the checklists and switch to personal branch

        git clone https://github.com/thisrod/theglist.git $HOME/theglist
        cd $HOME/theglist; git checkout thisrod

0. Install mercurial

        brew install hg

0. Download Plan 9 from User Space

        cd /usr/local
        hg clone http://code.swtch.com/plan9port plan9
        cd plan9
        ./INSTALL

0. Download workshop

        git clone https://github.com/thisrod/workshop.git $HOME/workshop

5. Install a Fortran compiler

        brew install gfortran

6. Install [TeX](http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg)

6. Set up Latin Modern fonts

        sudo ln -s /usr/local/texlive/2013basic/texmf-dist/fonts/opentype/public/lm '/Library/Fonts/Latin Modern'

7. Install [Lyx](http://www.lyx.org/Download#toc4)

8. Install the RevTeX layout for Lyx

        cp etc/revtex4-1.layout open /Applications/LyX.app/Contents/Resources/layouts/

8. Run Lyx, and select LyX → Reconfigure

9. Configure the AD printers at Systerm Preferences → Printers & Scanners → Add → IP.  The address is 172.22.10.24; use the name "5030".

10. Install [Dropbox](https://www.dropbox.com/)

11. Install pyenv (see the [Restore Python Checklist](python.md))

        brew install pyenv

4. Install the dotfiles

        tar -cf - -C $HOME/theglist/home/ . | tar -xf - -C $HOME

13. Start a fresh shell
