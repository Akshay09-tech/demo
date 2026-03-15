# Step 1: Base image (Python installed will get)
FROM python:3.9-slim

# Step 2: Make one folder in Container
WORKDIR /app

# Step 3: copy requirements.txt and install libraries
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Remaining all code (app.py) copy 
COPY . .

# Step 5: app port 5000 
EXPOSE 5000

# Step 6: Command which execute when container is start
CMD ["python", "app.py"]
