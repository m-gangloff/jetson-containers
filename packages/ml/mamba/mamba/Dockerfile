#---
# name: mamba
# group: mamba
# config: config.py
# depends: [transformers, causalconv1d, triton]
# requires: '>=34.1.0'
# test: test.py
# notes: https://github.com/state-spaces/mamba
#---
ARG BASE_IMAGE
FROM ${BASE_IMAGE}

ARG MAMBA_VERSION \
    MAMBA_VERSION_SPEC \
    CUDAARCHS

COPY build.sh install.sh patches /tmp/mamba/
COPY benchmarks /tmp/MAMBA/benchmarks
RUN /tmp/mamba/install.sh || /tmp/mamba/build.sh
