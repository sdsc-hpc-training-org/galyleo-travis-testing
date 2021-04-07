test_names=('Expanse-CPU' 'Expanse-GPU' 'Comet-CPU' 'Comet-GPU')
expLogin='jamesmcd@login.expanse.sdsc.edu'
cometLogin='jamesmcd@comet.sdsc.edu'
stratusLogin='jmcdouga@<>.sdsc.edu'
tsccLogin='jmcdouga@<>.sdsc.edu'
logins=($expLogin $expLogin $cometLogin $cometLogin $stratusLogin $tsccLogin $tsccLogin)

expanseCmd='/cm/shared/apps/sdsc/galyleo/galyleo.sh launch '
cometCmd="/home/jamesmcd/Code/reverse-proxy/start-jupyter"

test0="$expanseCmd -A ddp363"
test1="$expanseCmd -A ddp363 --gpus 1 -p gpu-shared -e singularitypro -s /cm/shared/apps/containers/singularity/tensorflow/tensorflow-2.3.0-gpu-20200929.simg"

test2="$cometCmd -s notebook"
test3="$cometCmd -s jupyterlab"
