FROM debian:slim

# Install wget for downloading NATS server
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN useradd --create-home --shell /bin/bash nats

# Download and install NATS server
RUN wget -O /usr/local/bin/nats-server https://github.com/nats-io/nats-server/releases/latest/download/nats-server-v2.10.18-linux-amd64 \
    && chmod +x /usr/local/bin/nats-server

# Expose NATS port
EXPOSE 4222

# Switch to non-root user
USER nats

# Set entrypoint
ENTRYPOINT ["/usr/local/bin/nats-server"]