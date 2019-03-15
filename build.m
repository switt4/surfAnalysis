addpath(genpath('/project/6007967/switt4/dataframe/util'))
addpath(genpath('/project/6007967/switt4/gifti'))
mcc -m -R -nodisplay -d compiled surf_resliceFS2WB
mcc -m -R -nodisplay -d compiled surf_affine_transform
mcc -m -R -nodisplay -d compiled surf_vol2surf
exit
