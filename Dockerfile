# Use official lightweight Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy dependency list and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the app
COPY . .

# Expose port 80
EXPOSE 80

# Run the Flask app
CMD ["python", "app.py"]
