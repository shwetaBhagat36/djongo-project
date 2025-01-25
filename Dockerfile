# Use an official Python runtime as a base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies for mysqlclient
RUN apt-get update && apt-get install -y \
    default-libmysqlclient-dev \
    gcc \
    && apt-get clean

# Copy the current directory contents into the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for the Django application
EXPOSE 8000

# Run the Django development server
<<<<<<< HEAD
CMD ["python", "/app/manage.py", "runserver", "0.0.0.0:8000"]
=======
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
>>>>>>> a4791219b9cdfdd0d92c4322e0eb7aa9e4ba7ae2
