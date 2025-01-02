#!/bin/bash
#SBATCH -G4 -t 72:0:0 -n1 -N1 -J FCNTest -o afno_run.run

module load anaconda
module load nvidia/12.0
conda activate fcntest5




config_file=./config/AFNO.yaml
config='afno_backbone'
run_num='8'

export HDF5_USE_FILE_LOCKING=FALSE
export NCCL_NET_GDR_LEVEL=PHB

export MASTER_ADDR=$(hostname)

export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:128

set -x
#srun -u --mpi=pmi2 bash -c "source export_DDP_vars.sh; python train.py --enable_amp --yaml_config=$config_file --config=$config --run_num=$run_num"
source export_DDP_vars.sh; /explore/nobackup/people/shamer/.conda/envs/fcntest5/bin/python ~/FourCastNet_CERRA/train.py --enable_amp --yaml_config=$config_file --config=$config --run_num=$run_num
