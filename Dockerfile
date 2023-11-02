# Use an official Python runtime as a parent image
FROM python:3.10.8
ARG PATH_NANE=TATSU_on_Docker_Server

ADD . /$PATH_NANE

# Set the working directory inside the container
WORKDIR . /$PATH_NANE/src

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /$PATH_NANE/requirements.txt

# Define the command to run your application
ENV ENV_PATH_NAME = $PATH_NANE
CMD ["python", "/_Test1.py"]
# CMD ["ls"]
# CMD ["pwd"]
