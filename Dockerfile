# Use an official Python runtime as a parent image
FROM python:3.10.8

ADD . /python-Test1

# Set the working directory inside the container
WORKDIR . /python-Test1/src

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /python-Test1/requirements.txt

# Image directory:
RUN pwd

# Define the command to run your application
# CMD ["python", "/python-Test1/src/_FlaskInterface.py"]