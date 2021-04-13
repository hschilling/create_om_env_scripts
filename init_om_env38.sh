if [ -z "$1" -o -n "$2" ]; then
    echo "Usage: initom conda_env_name"
fi
​
env_name=$1
​
​
export MAKEFLAGS='-j 4'
​
# Set up the environment
conda_pkgs="\
    python>=3.8 \
    numpy \
    scipy \
    cython \
    jinja2 \
    pygments \
    python-dateutil \
    ipython \
    nbconvert \
    notebook \
    decorator \
    networkx \
    matplotlib \
    parameterized \
"
conda create -y -n "$env_name" $conda_pkgs || return
​
# # Install the rest of the packages
# conda activate $env_name || return
​
# pip_pkgs="\
#   mpi4py>=3.0.3 \
#   petsc==3.12.0 \
#   git+https://bitbucket.org/petsc/petsc4py.git@3.12.0 \
#   psutil \
#   packaging \
#   pdflatex \
#   git+https://github.com/mdolab/pyXDSM.git \
# "
​
# for p in $pip_pkgs; do
#     echo "$p"
#   python -m pip install --no-cache-dir "$p" || return
