FROM python:3.8-alpine

COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

# Copying Flask App: 
COPY src .

# Running Flask app in development:
CMD ["python", "wsgi.py"]
