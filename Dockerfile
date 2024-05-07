# Build the Python BMI example from a Mambaforge (Linux/Ubuntu) image.
FROM condaforge/mambaforge:24.3.0-0

LABEL author="Mark Piper"
LABEL email="mark.piper@colorado.edu"

ENV name=csdms
ENV prefix=/opt/${name}

RUN git clone https://github.com/csdms/jupyterhub-management ${prefix}
WORKDIR ${prefix}/environments
RUN mamba env create --file csdms.yaml
RUN conda activate ${name}
