# Use the official Python image as a parent image
FROM python:3.8
#FROM ubuntu:latest
#ENV DJANGO_SETTINGS_MODULE=dj_posts_docker.settings
WORKDIR /dj_posts_docker

ENV PYTHONUNBUFFERED=1
# Set the working directory in the container
#ADD . /usr/src/app
#WORKDIR /app
# Copy the current directory contents into the container
COPY requirements.txt ./
COPY .env .env
# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run django's development server
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
#COPY . /app/
COPY . .
