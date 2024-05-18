# Use the official Python image from the Docker Hub
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# Set the working directory in the container
WORKDIR /app

# Copy the FastAPI application code into the container
COPY ./app /app

# Install any additional dependencies if needed
# For example, if you have dependencies listed in a requirements.txt file:
# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt
