# Use an official Python runtime as a parent image
FROM python:3.10.8
ARG PATH_NANE=TATSU_on_Docker_Client


ADD . /$PATH_NANE

# Set the working directory inside the container
WORKDIR . /$PATH_NANE/src

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /$PATH_NANE/requirements.txt

# Image directory:
RUN pwd

# Define the command to run your application
ENV ENV_PATH_NAME = $PATH_NANE
CMD ["python", "/", $ENV_PATH_NAME, "/src/_FlaskRequest.py"]