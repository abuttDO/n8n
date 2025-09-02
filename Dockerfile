FROM n8nio/n8n:1.109.1

USER root

# Ensure node user exists (in case base image is missing it)
RUN id -u node 2>/dev/null || useradd -m -u 1000 -s /bin/bash node

# Create necessary directories
RUN mkdir -p /home/node/.n8n /home/node/files && \
    chown -R node:node /home/node && \
    chmod 755 /home/node/files

USER node
WORKDIR /home/node/.n8n

EXPOSE 5678
