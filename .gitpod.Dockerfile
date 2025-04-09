FROM python:3.10-slim

# Install required tools
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    unzip \
    gnupg \
    chromium \
    chromium-driver \
    && apt-get clean

# Add Chrome to PATH
ENV PATH="/usr/lib/chromium/:$PATH"
