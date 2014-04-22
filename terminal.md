Restore a generic terminal from a fresh OSX install
===

1. Get an Itunes account

1. Install XCode from the App Store

        which gcc

1. Install the Homebrew package manager for OSX:

        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

2. Install a recent version of git

	brew install git

3. Download these checklists (amend them as you go).  Also gets some elusive configuration files.

	git clone github/blah/theglist
	
4. Install the dotfiles

	?
	
5. Install a Fortran compiler:

        brew install gfortran
        
6. Install TeX

	http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg
	
7. Install Lyx

	http://www.lyx.org/Download
	
8. Install the RevTeX style

	cp etc/revtex4-1.layout open /Applications/LyX.app/Contents/Resources/layouts/
	
Run Lyx, and select LyX → Reconfigure
	
9. Configure the AD printers: Systerm Preferences → Printers & Scanners → Add → IP

	172.22.10.24		5030
	
10. Install Dropbox

	https://www.dropbox.com/
	
11. Install pyenv (see Restore Python Checklist)

	brew install pyenv

1. Install the pip package manager for Python:

        sudo easy_install pip

1. Replace the numpy that came with OSX with the latest stable version:

        pip install numpy --upgrade
	
5. Get scipy, because _obviously_ the factorial function doesn't belong in the numerical library:

        sudo pip install scipy

1. Download and install the CUDA drivers and tookit from

        http://developer.nvidia.com/cuda/cuda-downloads

1. Add the CUDA compilers to your path:

        echo 'PATH=$PATH:/usr/local/cuda/bin/ export PATH' >> $HOME/.bashrc && . $HOME/.bashrc

1. Install ghostscript.  The reasons are black magical; it has the side effect of installing some header files that matplotlib requires.

        brew install ghostscript

1. Install pycuda, pyfft, matplotlib

        sudo pip install pycuda
        sudo pip install pyfft
        sudo pip install matplotlib

1. Install xmds

        http://sourceforge.net/projects/xmds/files/

1. If you don't have LaTeX, and want to put TeX labels in your plots, install it.

1. Ask Bogdan to email you the VSSUP scripts, and run one:

        rm bec1.pdf && python bec1.py && open bec1.pdf

GStar variations
-------

1. Obtain a GStar account

        http://astronomy.swin.edu.au/account_request/

1. Install sshfs on your terminal and mount your GStar home directory

        brew install sshfs
        mkdir /Volumes/gstar
        sshfs <you>@g2.hpc.swin.edu.au: /Volumes/gstar

1. Log in to GStar

        ssh <you>@g2.hpc.swin.edu.au

1. Load the necessary environment on GStar

        module load python cuda pyenv

1. Set up pyenv on GStar

        echo 'module load pyenv; eval "$(pyenv init -)"' >> ~/.bashrc

1. Refer to the original if that doesn't work

        https://github.com/yyuu/pyenv#basic-github-checkout

1. Install Reikna on GStar

        git clone https://github.com/Manticore/reikna
