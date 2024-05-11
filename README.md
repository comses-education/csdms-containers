# csdms-containers

Docker and Singularity/Apptainer definition files for [CSDMS Workbench](https://csdms.colorado.edu/wiki/Workbench) software.

## Docker

The image is built on an Ubuntu [condaforge/mambaforge](https://hub.docker.com/r/condaforge/mambaforge) base image,
with `conda` and `mamba` installed in `opt/conda`.
CSDMS Workbench software,
listed in [requirements.txt](./requirements.txt),
is installed into the the *base* environment, which is activated.

Build this example locally with:
```
docker build --tag workbench --file csdms-workbench.dockerfile .
```

Run a container from this image interactively with:
```
docker run -it workbench
```

A versioned image built from this repository is hosted on Docker Hub
at [csdms/workbench](https://hub.docker.com/r/csdms/workbench).
To tag, build, and push an update, run:
```
docker build --tag csdms/workbench:tagname --file csdms-workbench.dockerfile --push .
```
where `tagname` is, e.g., `0.1` or `latest`.

A user can pull this image from Docker Hub with:
```
docker pull csdms/workbench
```


## Singularity/Apptainer
