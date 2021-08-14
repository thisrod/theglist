Restore Terminal
===

1. Install Homebrew

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

2. Install [Firefox](http://www.mozilla.org/)

2. Install the [Abine Blur plugin](https://addons.mozilla.org/en-US/firefox/addon/donottrackplus/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)

2. Install an [ArXiv search plugin](http://gruppo3.ca.infn.it/mfloris/?download=arxiv.xml)

        sudo cp /Users/rpolkinghorne/Downloads/arxiv.xml /Applications/Firefox.app/Contents/Resources/browser/searchplugins

2. Configure git following [Github's instructions](https://help.github.com/articles/set-up-git#set-up-git)

3. Download the checklists and switch to personal branch

        git clone https://github.com/thisrod/theglist.git $HOME/theglist
        cd $HOME/theglist; git checkout thisrod


0. Download Plan 9 from User Space

        cd /usr/local
        sudo git clone https://github.com/9fans/plan9port.git plan9
        cd plan9
        sudo ./INSTALL

0. Download workshop

        git clone https://github.com/thisrod/workshop.git $HOME/workshop

6. Install [TeX](https://mirror.ctan.org/systems/mac/mactex/BasicTeX.pkg)

6. Set up Latin Modern fonts

        sudo ln -s /usr/local/texlive/*basic/texmf-dist/fonts/opentype/public/lm '/Library/Fonts/Latin Modern'
        sudo ln -s /usr/local/texlive/*basic/texmf-dist/fonts/opentype/public/lm-math/ '/Library/Fonts/Latin Modern Math'

4. Install the dotfiles

        tar -cf - -C $HOME/theglist/home/ . | tar -xf - -C $HOME

5. [Configure](https://support.mozilla.org/en-US/kb/change-program-used-open-email-links)
Firefox to use Gmail

13. Start a fresh shell
