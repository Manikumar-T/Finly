# Use the official Python image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY  . /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python ./finly/manage.py migrate 

# Default command
CMD ["python", "./finly/manage.py", "runserver", "0.0.0.0:8000"]
