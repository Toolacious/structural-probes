# DLHLP HW3

## Step 1
cloning the repository below:
```bash=
git clone https://github.com/Chung-I/structural-probes.git
```
## Step 2
download dataset and put it under `example/config/ctb`.
## Step 3
perform preprocessing:
```bash=
cd scripts ; bash gen_ctb.sh
```
## Step 4

run parse distance task and parse depth task on all layers of BERT-base-chinese; config files can be found at  `example/config/ctb/{pad,prd}_ctb-BERTbase[0-11].yaml`.

## Step 5
plot dependency graph. This can be found at `example/results/[checkpoint_name]/dev.tikz`.
You can use online service like Overleaf to complile the tikz file. An example could be found here: https://www.overleaf.com/read/bqcszyjrgnby.

