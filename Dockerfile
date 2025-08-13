# Use the official Python image
FROM python:3.12-alpine

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose the port Flask runs on
EXPOSE 8030

# Run the Flask app
CMD ["python3","app.py"]