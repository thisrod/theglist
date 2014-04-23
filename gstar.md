GStar variations (out of date)
====

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
