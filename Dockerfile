# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY app/requirements.txt .
RUN pip install -r requirements.txt

# Copy app code
COPY app/ .

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
