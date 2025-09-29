# Dockerfile for Podman-compatible Python app
FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -r requirements.txt
COPY app.py /app/
EXPOSE 80
CMD ["python", "app.py"]
