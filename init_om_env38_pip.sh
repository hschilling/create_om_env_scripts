pip_pkgs="\
    mpi4py>=3.0.3 \
    petsc==3.12.0 \
    git+https://bitbucket.org/petsc/petsc4py.git@3.12.0 \
    psutil \
    packaging \
    pdflatex \
    git+https://github.com/mdolab/pyXDSM.git \
"
​
for p in $pip_pkgs; do
    echo "$p"
    python -m pip install --no-cache-dir "$p" || return
done
