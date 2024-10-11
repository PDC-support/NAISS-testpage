

# PDC PRACE workshop “HPC Tools for the Modern Era”

This page contains useful information and links to course material for the
PDC/PRACE workshop “HPC Tools for the Modern Era”.

## Account and login

Please see instructions for acquiring a PDC account and logging in to
PDC clusters in the [General instructions for PDC courses](general.md).

## Course material and installation instructions

All software needed to participate in the workshop will
be provided to course participants as a virtual machine on USB sticks
which will be handed out when the workshop starts.
However, most of the tools can also be installed directly on your laptop.

Links to the course material and optional installation instructions
for all workshop modules (for those
who want to install some of the software on their own laptops)
are provided here. **Note** that we strongly recommend all workshop
participants to install VirtualBox, see below.

### Virtual machine

USB sticks containing a virtual machine with Ubuntu 18.04 will be handed
out to participants when the workshop starts. The Ubuntu image contains:

- Kerberos and SSH configuration to enable login to PDC
- Singularity version 2.5.2
- A Python environment containing Jupyter Notebooks and other packages
- Arm Forge

The VM is also available for [download on KTH Box](https://kth.box.com/s/w4fbj8brvetlmpiiw8tki5ycsk8qozfu).

**Installation instructions**

In order to use this virtual machine (VM) you need to have virtualization software installed
on your laptop. We recommend VirtualBox which can be installed on Windows, MacOS
and Linux and is available for download [here](https://www.virtualbox.org/wiki/Downloads).

The USB sticks with the workshop VM have been formatted with exFAT file system. exFAT is supported on MacOS and
Windows, but on some Linux distributions one needs to install additional packages to add
exFAT file system support. On Ubuntu, you need to install these two packages to be able to mount the
exFAT USB sticks:

```default
$ sudo apt-get install exfat-utils exfat-fuse
```

In order to import the workshop VM into your VirtualBox application, do the following:

1. Click `File`.
1. Select `Import Appliance`.
1. Click the little symbol on the right of the text box and navigate to the USB device.
1. Select `PRACE-Course.ova` and click `Open`.
1. Click `Continue`, and then click `Import`.
1. VirtualBox should now start importing the VM, which might take a couple of minutes.
1. Double-click `PRACE_Course` in the left menu in order to start the VM.

Kerberos, SSH and Jupyter can be installed on all operating systems, but
Singularity requires CentOS or Ubuntu Linux distributions. If you are have MacOS
or Windows on your laptop, you will therefore need to install VirtualBox.
If you have CentOS or Ubuntu, you may choose to install Singularity directly
on your laptop (see below), but we still strongly recommend that Linux users also
install VirtualBox as a fallback option if anything doesn’t work as expected.

### HPC Tips and Tricks

The lesson material can be found at [https://pdc-support.github.io/hpc-intro/](https://pdc-support.github.io/hpc-intro/).

**Installation instructions**

For this lesson you only need a PDC account, a Kerberos installation and
SSH configuration to be able to log in to PDC. Further details are provided in the
section [General instructions for PDC courses](general.md).

### Jupyter Notebooks on the cluster

All lesson material can be found on GitHub: [https://github.com/PDC-support/jupyter-notebook](https://github.com/PDC-support/jupyter-notebook).
You will be asked to clone it to your home directory at PDC by using the command:

> $ git clone [https://github.com/PDC-support/jupyter-notebook.git](https://github.com/PDC-support/jupyter-notebook.git)

(or by downloading the zip file by clicking the green “Clone or download” button).
You can also clone the material to your own laptop if you wish to play around with the notebooks.

**Installation instructions**

It is not essential to install Jupyter Notebooks on your laptop since Jupyter will be
run on PDC systems in the workshop. You will however need to set up a Jupyter configuration
on the Tegner cluster, set a Jupyter password and generate a self-signed certificate for safe
usage of Jupyter on Tegner. Instructions for doing this can be found
[on this software documentation page](https://www.pdc.kth.se/software/software/Jupyter-Notebook/centos7/4.4.0/index.html).

If you’re interested in using Jupyter outside PDC you can follow these official instructions
[for installing Jupyter](https://jupyter.org/install).

### Singularity

All lesson material can be found in a GitHub repository: [https://github.com/PDC-support/singularity-introduction](https://github.com/PDC-support/singularity-introduction).
The slides are served on [https://gitpitch.com/PDC-support/singularity-introduction#/](https://gitpitch.com/PDC-support/singularity-introduction#/).

**Installation instructions**

To install Singularity on a CentOS or Ubuntu Linux distribution, follow
the instructions [in the Singularity documentation](http://singularity.lbl.gov/docs-installation).

If you have a MacOS, Windows or a non-CentOS/non-Ubuntu Linux distribution, you will be
instructed to use the workshop virtual machine for the Singularity exercises.

### Allinea Arm

Course material [`available here`](../download/pdc-prace18.pdf).

**Installation instructions**

Arm Forge will be installed on the workshop virtual machine and no additional
software needs to be installed on your laptop.

However, if you prefer you can install the Arm Forge Client on your laptop as well. Ubuntu users are
recommended to install the full Arm Forge suite, which also functions as a remote client.
[Click here](http://content.allinea.com/downloads/arm-forge-18.1.1-Ubuntu-16.04-x86_64.tar)
to download the Arm Forge installer for Ubuntu, and
[click here](http://content.allinea.com/downloads/arm-forge-client-latest-Windows-10.0-x64.exe)
to download the Arm Forge Client installer for Windows. MacOS users are recommended to use the
workshop VM.

## Feedback on workshop lessons

After each lesson, please provide your (very light-weight) feedback:

1. [HPC tips & tricks](https://goo.gl/forms/TNPtndaeyh2DYOef1)
1. [Singularity containers](https://goo.gl/forms/uTpZSwAVzrxT7SzT2)
1. [Jupyter Notebooks](https://goo.gl/forms/zmzQdrCVuPl76aT53)
1. [Arm Forge](https://goo.gl/forms/zeOhwaGaF6Zk0Dg82)
1. [General workshop feedback](https://goo.gl/forms/zWVn2Pmh31JcTUtq1)
