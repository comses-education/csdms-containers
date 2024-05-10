FROM condaforge/mambaforge:24.3.0-0

LABEL description="Base image with CSDMS Workbench software."
LABEL author="Mark Piper"
LABEL email="mark.piper@colorado.edu"

WORKDIR /opt
COPY requirements.txt .
COPY README.md .
RUN mamba install -y -n base --file requirements.txt
