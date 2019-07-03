# Notes on Conda envs and Jupyter kernels

## General conda commands
```
conda env list
conda env remove --name some-env
```

## Creating new conda envs
I like specifying the python version, since it will install an env-local version of 
`python`, `pip`, etc. which provides better isolation for projects with complicated 
dependencies.

```
conda create -n myenv python=3.4
```

## Installing a jupyer kernel for a conda env
This is cool for using Jupyter Notebooks and easily switching between your registered
conda environments
```
source activate myenv
conda install pip
conda install ipykernel # or pip install ipykernel
python -m ipykernel install --user --name myenv --display-name "Python (myenv)"
```
