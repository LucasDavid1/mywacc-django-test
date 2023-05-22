# We will use an official Python runtime as a parent image
FROM python:3.9

# The environment variable ensures that the python output is set straight to the terminal without buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /django_project

# Set the working directory to /django_project
WORKDIR /django_project

# Copy the current directory contents into the container at /django_project
COPY . /django_project/

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# The command to start uWSGI
CMD ["uwsgi", "app.ini"]
