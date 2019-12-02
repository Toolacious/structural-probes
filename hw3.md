# DLHLP HW3


## Step 1
Clone the repository below:
```bash=
git clone https://github.com/Chung-I/structural-probes.git
```
## Step 2
Download dataset and put it under `example/data/ctb`.
## Step 3
Perform preprocessing:
```bash=
cd scripts ; bash gen_ctb.sh
```
## Step 4

Run parse distance task and parse depth task on all layers of BERT-base-chinese; config files can be found at   `example/config/ctb/{pad,prd}_ctb-BERTbase[0-11].yaml`. After training, results(both **UUAS(Undirected Unlabeled Attachment Score**) and **Spearman's $\rho$**) can be retrieved from `example/results/[checkpoint_name]/dev.{uuas,dev.spearmanr-5_50-mean}`. You're then asked to draw a plot of **UUAS** and **Spearman's $\rho$** w.r.t. the layer of BERT (see Figure 1 of the [paper](https://nlp.stanford.edu/pubs/hewitt2019structural.pdf)). For details on the exact command, see [README.md](README.md).

## Step 5
Plot several dependency graphs given examples from dev set. The tikz file for visualization can be found after training at `example/results/[checkpoint_name]/dev.tikz`. You can use online service like Overleaf to complile the tikz file. An example could be found here: https://www.overleaf.com/read/bqcszyjrgnby.

## Step 6
For bonus task (learning to *rank* instead of directly regressing), complete the TODO loss function in [structural-probes/loss.py](structural-probes/loss.py). Instead of using squared Euclidean distance as in the paper, you can also take just the Euclidean distance and perform rank loss on it by adding a probe class taking the square root of the inner product in [structural-probes/probe.py](structural-probes/probe.py), and register the probe at [structural-probes/run_experiment.py](structural-probes/run_experiment.py).

