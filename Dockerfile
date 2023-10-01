# Use the official Python image as a parent image
FROM python:3.8
#FROM ubuntu:latest
ENV DJANGO_SETTINGS_MODULE=dj_posts_docker.settings
# Set the working directory in the container
WORKDIR /app

#RUN apt-get update && \
#    apt-get install -y python3 python3-pip sqlite3 libsqlite3-dev

# Copy the current directory contents into the container
COPY requirements.txt ./
# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt



# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run django's development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
COPY . /app/
