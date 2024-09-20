# Step 1: Use an official Python runtime as the base image
FROM python:3.8-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container
COPY . /app

# Step 4: Install the dependencies from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Define the command to run the application
CMD ["python", "app.py"]
