# WEEK 6 DOCKERFILE

# Python 3.13 slim base image: Debian + Python, without compilers and docs.
FROM python:3.13-slim

# Every following instruction (and the running container) works from /app.
WORKDIR /app

# Copy requirements.txt before the source so the dependency layer below is
# cached and only rebuilt when requirements.txt changes.
COPY requirements.txt .

# Install dependencies without keeping pip's download cache in the image.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code (changes often, so it comes last).
COPY app ./app

# Document the port the application listens on (publishing is done by `docker run -p`).
EXPOSE 8000

# Start Uvicorn bound to all interfaces so the host can reach it through -p 8000:8000.
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
