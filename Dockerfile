# anibali/pytorch:cuda-9.2
ARG PYTORCH_IMAGE=anibali/pytorch:no-cuda
FROM $PYTORCH_IMAGE

USER root 

RUN apt-get update && apt-get install -y \
    wget \
    vim \
    build-essential

RUN wget --quiet https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
/bin/bash Miniconda3-latest-Linux-x86_64.sh -f -b -p /opt/conda && \
rm Miniconda3-latest-Linux-x86_64.sh
ENV PATH /opt/conda/bin:$PATH

RUN conda install python==3.6.5 --yes

RUN conda update numpy
RUN pip install -U pip
RUN pip install Cython

RUN conda install pyarrow -c conda-forge

RUN conda install --quiet --yes \
    'plotly' \
    'seaborn' \
    'pandas'

RUN pip install scikit-optimize

RUN pip install more_itertools 

RUN pip install sphinx \
    pytest

RUN apt-get install -y gcc

RUN pip install lime 

RUN conda install pyyaml mkl mkl-include setuptools cmake cffi typing

#RUN pip install pyro-ppl \
#    gym[atari]

RUN pip install deap

RUN pip install JayDeBeApi \
    pymssql
USER root        
RUN apt-get update       
RUN apt-get install -y default-jre

RUN pip install pyDOE
RUN pip install Faker

RUN pip install cryptography \
    pycryptodomex

RUN conda install -c conda-forge hdbscan

RUN pip install papermill
RUN pip install filterpy
RUN pip install fbprophet

