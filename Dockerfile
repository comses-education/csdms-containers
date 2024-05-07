# Base image with CSDMS Workbench software.
FROM condaforge/mambaforge:24.3.0-0

LABEL author="Mark Piper"
LABEL email="mark.piper@colorado.edu"

ENV env_name=csdms

WORKDIR /opt

COPY ${env_name}.yml .

RUN mamba env create --file ${env_name}.yml
RUN echo "source activate ${env_name}" > ~/.bashrc
