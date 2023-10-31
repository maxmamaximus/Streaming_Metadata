# Use an official Python runtime as a parent image
FROM python:3.10.8

ADD . /python-Test1

# Set the working directory inside the container
WORKDIR /python-Test1/src

# Copy the requirements file into the container at /app
COPY requirements.txt 

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Define the command to run your application
CMD ["python", "./src/_Test1.py"]