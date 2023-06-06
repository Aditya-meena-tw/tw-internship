# Base image
FROM python:3.8-slim

ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy project files to working directory
COPY . /app

# Install system dependencies
RUN apt-get update

# Create and activate a virtual environment
RUN python3 -m venv venv
ENV PATH="/app/venv/bin:$PATH"

# Install pip requirements
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which the web server will run (if applicable)
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]