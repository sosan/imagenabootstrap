FROM mxnet/python:latest

COPY requirements.txt /tmp/
RUN pip install --upgrade pip && \
        pip install keras tensorflow pillow h5py jupyter

RUN useradd --create-home usuarioapp
WORKDIR /home/usuarioapp

COPY ./src ./src

WORKDIR /home/usuarioapp/src
ENV PATH="/home/usuarioapp/.local/bin:${PATH}"

