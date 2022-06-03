#!/bin/sh

# Install the required packages
sudo apt install slurm-client mpi-default-bin slurm-wlm-torque

# THis is workaround using MKL library in AMD node
export MKL_DEBUG_CPU_TYPE=5
export MKL_CBWR=AUTO

# For WSL2
#export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
#export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
#export LIBGL_ALWAYS_INDIRECT=1

# This is workaround for QE-GPU edition to work with NVHPC
export CUFFT_ALLOWED_L2_CACHE=0
export OMP_NUM_THREADS=1
export OMPI_MCA_mca_btl_base_warn_component_unused=0

# remove FORTRAN STOP message when nvfortran job finishes
# It can be ignored because this is not error.
export NO_STOP_MESSAGE=1

# Install Miniconda
bash /mnt/hpc/pkgs/Miniconda3-latest-Linux-x86_64.sh

# For Quantum Espresso
export ESPRESSO_PSEUDO='/mnt/hpc/pseudo/'

# Conda environment
export PATH=/home/$USER/miniconda3/bin:/mnt/hpc/pkgs/pwtk-2.0:$PATH

# Install QE through conda
conda install -c conda-forge qe
