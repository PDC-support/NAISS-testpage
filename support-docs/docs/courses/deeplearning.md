

# PRACE Deep Learning workshop at PDC

This page contains useful information and links to course material for the
PRACE Deep Learning workshop at PDC.

The agenda for the workshop can be found at
[https://events.prace-ri.eu/event/412/](https://events.prace-ri.eu/event/412/).

## Account and login

Please see instructions for acquiring a PDC account and logging in to
PDC clusters in the [General instructions for PDC courses](general.md#general-instructions-for-pdc-courses).

The Tegner cluster will be used for the exercises on
day 2 (March 21).

## Course material

All course material that will be covered during the workshop can
be found on the `kth2019` branch in [this GitHub repository](https://github.com/csc-training/intro-to-dl). Participants should clone the repository
to a directory on the Lustre file system. For example (replace
`<initial>` and `<username>`):

```default
$ ssh -Y <username>@tegner.pdc.kth.se
$ cd /cfs/klemming/nobackup/<initial>/<username>
$ git clone https://github.com/csc-training/intro-to-dl.git
$ cd intro-to-dl
$ git checkout kth2019
```

## Running a batch job on a GPU

We will use both K80 nodes and K420 nodes for the workshop.

In order to submit a Tensorflow or Keras
job to a K80 node, please copy-paste the following
into a batch script `run-k80.sh`:

```default
#! bin bash
#SBATCH  N 1  c 4   gres=gpu K80 1  t 1 00 00   mem=8G
#SBATCH  A edu19 dlprace
#SBATCH   reservation=dlp1903

module load anaconda/py36/5.0.1
source activate tensorflow1.6

echo Running $*
time python $*

rm -Rf /tmp/.keras
source deactivate
```

A given Python script can then be submitted by:

```default
$ sbatch run-k80.sh keras-ted-cnn.py
```

To submit a job instead to a K420 node, change the first line to:

```default
#SBATCH  N 1  c 4   gres=gpu K420 1  t 1 00 00   mem=8G
```

For the PyTorch exercises, use this script instead:

```default
#! bin bash
#SBATCH  N 1  c 4   gres=gpu K80 1  t 4 00 00   mem=8G
#SBATCH  A edu19 dlprace
#SBATCH   reservation=dlp1903

module load anaconda/py36/5.0.1
source activate pytorch

echo Running $*
time python $*

source deactivate
```

and submit a given PyTorch job:

```default
$ sbatch run-pytorch.sh pytorch_dvc_cnn_simple.py
```
