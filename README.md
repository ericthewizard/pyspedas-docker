# PySPEDAS Dockerfiles

This repository contains Dockerfiles for running [PySPEDAS](https://github.com/spedas/pyspedas) on various versions of Python. The Dockerfiles are located in the `dockerfiles` directory.

## Prerequisites

Before using these Dockerfiles, you will need to have Docker installed on your system. You can follow the instructions for [installing Docker](https://docs.docker.com/engine/install/) to install Docker on your system.

## Building the Docker images

To build a Docker image from one of the Dockerfiles, navigate to the `dockerfiles` directory and run the following command:

```bash
docker build -f <Dockerfile> -t <image_name> .
```

Replace `<Dockerfile>` with the name of the Dockerfile you want to use (e.g., `python_3_10`, `python_3_11`, etc.), and `<image_name>` with the desired name for the Docker image.

For example, to build a Docker image from the `python_3_10` Dockerfile, you can use the following command:

```bash
docker build -f python_3_10 -t pyspedas-python-3-10 .
```

This will build a Docker image from the `python_3_10` Dockerfile and tag it with the name `pyspedas-python-3-10`.

## Running PySPEDAS in the Docker container

To run PySPEDAS in the Docker container, use the following command:

```bash
docker run -it <image_name> python
```

Replace `<image_name>` with the name of the Docker image you want to use.

For example, to run PySPEDAS in the Docker container built from the `python_3_10` Dockerfile, you can use the following command:

```bash
docker run -it pyspedas-python-3-10 python
```

This will start the Docker container and open a Python interpreter in the terminal. You should be able to import the PySPEDAS package and use it in the interpreter.