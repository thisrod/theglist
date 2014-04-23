Restore Python Environment
===

1. Install the current Python 3, and set as the default

        pyenv install 3.4.0
        pyenv global 3.4.0

1. Install numpy

        pip install numpy

5. Get scipy, because _obviously_ the factorial function doesn't belong in the numerical library:

        pip install scipy

1. Download and install the [CUDA drivers and tookit](http://developer.nvidia.com/cuda/cuda-downloads)

1. Install ghostscript.  The reasons are black magical; it has the side effect of installing some header files that matplotlib requires.

        brew install ghostscript
        brew install freetype

1. Install pycuda and matplotlib

        pip install pycuda
        pip install matplotlib

2. Download reikna

        mkdir -p $HOME/.caouspy
        git clone https://github.com/Manticore/reikna.git $HOME/.caouspy/reikna
