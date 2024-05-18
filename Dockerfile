# Use Alpine Linux as the base image
FROM python:3.9-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the necessary files from your local machine into the Docker image
COPY ./app /app

# Install FastAPI and Uvicorn
RUN pip install fastapi uvicorn

# Expose the port on which your FastAPI application will run
EXPOSE 80

# Define the command to run your FastAPI application
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]