# Dockerfile for Podman-compatible Python app (Fixed)
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY app.py /app/

# Create a non-root user for security
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser

# Run the application
CMD ["python", "app.py"]
