# This is a Dockerfile for running the MMS test suite
# on different versions of Python
FROM python:3.11

WORKDIR /app

# set environment variables
ARG MMS_USERNAME
ARG MMS_PASSWORD
ARG SPEDAS_DATA_DIR

ENV MMS_AUTH_U=$MMS_USERNAME
ENV MMS_AUTH_P=$MMS_PASSWORD
ENV SPEDAS_DATA_DIR=$SPEDAS_DATA_DIR

RUN echo "The data directory is: $SPEDAS_DATA_DIR"

# install PySPEDAS dependencies
RUN python -m pip install --upgrade pip
# RUN pip install spacepy
RUN pip install pyspedas
RUN pip install pyspedas --target /app
RUN python /app/pyspedas/mms/tests/setup_tests.py

# run the MMS tests
#CMD ["python", "-m", "unittest", "discover", "-s", "/app/pyspedas/mms/tests", "-p", "*.py"]
CMD ["python", "-m", "unittest", "discover", "-s", "/app/pyspedas/mms/tests", "-p", "load_routine_tests.py"]