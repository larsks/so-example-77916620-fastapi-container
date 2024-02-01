# Making a parent image (lightweight Debian with Python installed)
FROM python:3.11-alpine

# Create a directory into this operating system
WORKDIR /iseProject

COPY requirements.txt ./

RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt

ENV NAME World

COPY . ./

# Starting the app inside the IMAGE
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "4001", "--reload"]
