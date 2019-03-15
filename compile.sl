#!/bin/bash -l
#SBATCH --job-name=surfAnalysis-compile
#SBATCH --account=def-akhanf-ab
#SBATCH --time=0-01:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4000
#SBATCH --mail-user=switt4@uwo.ca
#SBATCH --mail-type=ALL

module load matlab/2018a

mkdir -p compiled

cat > build.m <<END
addpath(genpath('/project/6007967/switt4/dataframe/util'))
addpath(genpath('/project/6007967/switt4/gifti'))
mcc -m -R -nodisplay -d compiled surf_resliceFS2WB
mcc -m -R -nodisplay -d compiled surf_affine_transform
mcc -m -R -nodisplay -d compiled surf_vol2surf
exit
END
srun matlab -nodisplay -nosplash -singleCompThread -r build
