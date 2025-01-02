#!/bin/bash
#SBATCH -G2 -t 600 -n1 -N1 -J FCNTest
module load anaconda
module load nvidia/12.0
conda activate fcntest5

#alias python='/explore/nobackup/people/shamer/.conda/envs/fcntest_new/bin/python'


#srun -G4 -n1 python inference/inference.py --config=afno_backbone --run_num=3 --vis --weights "/explore/nobackup/people/shamer/FCN_weights_v0/$WEIGHTS" --override_dir '/explore/nobackup/people/shamer/out/' 
/explore/nobackup/people/shamer/.conda/envs/fcntest5/bin/python inference/inference.py --config="$2" --run_num=3 --vis --weights "/explore/nobackup/people/shamer/weights/$1/training_checkpoints/best_ckpt.tar" --override_dir '/explore/nobackup/people/shamer/out/nesting/' 
