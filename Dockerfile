FROM continuumio/miniconda3

RUN conda config --add channels conda-forge && \
    conda config --set channel_priority strict && \
    conda install --yes python=3.6.10 pyne jupyter=1.0.0 && \
    conda clean -afy && \
    find /opt/conda/ -follow -type f -name '*.a' -delete && \
    find /opt/conda/ -follow -type f -name '*.pyc' -delete && \
    find /opt/conda/ -follow -type f -name '*.js.map' -delete

