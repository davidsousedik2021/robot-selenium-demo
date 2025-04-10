FROM python:3.10-slim

# Install git, Chrome, and other required tools
RUN apt-get update && apt-get install -y \
    git \
    wget \
    curl \
    unzip \
    gnupg \
    chromium \
    chromium-driver \
    && apt-get clean

# Add Chrome to PATH
ENV PATH="/usr/lib/chromium/:$PATH"

