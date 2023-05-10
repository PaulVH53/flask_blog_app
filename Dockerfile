# Use the official Python image as the base image
FROM python:3.10.6

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 5000 for the Flask app to run on
EXPOSE 5000

# Set the entry point for the container to run the Flask app
CMD ["python", "app.py"]
