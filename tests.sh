test_names=('Expanse-CPU' 'Expanse-GPU')
expLogin='jamesmcd@login.expanse.sdsc.edu'
logins=($expLogin $expLogin)
expanseCmd='/cm/shared/apps/sdsc/galyleo/galyleo.sh launch '
test0="$expanseCmd -A ddp363"
test1="$expanseCmd -A ddp363 --gpus 1 -p gpu-shared -e singularitypro -s /cm/shared/apps/containers/singularity/tensorflow/tensorflow-2.3.0-gpu-20200929.simg"
