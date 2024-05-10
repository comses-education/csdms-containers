FROM condaforge/mambaforge:24.3.0-0

LABEL description="Base image with CSDMS Workbench software."
LABEL author="Mark Piper"
LABEL email="mark.piper@colorado.edu"

WORKDIR /opt

COPY environment.yml .
COPY requirements.txt .

RUN mamba env create --file environment.yml
RUN echo "source activate csdms" > ~/.bashrc
