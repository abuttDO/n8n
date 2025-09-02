FROM n8nio/n8n:1.109.1

USER root

# Create necessary directories
RUN mkdir -p /home/node/.n8n /home/node/files && \
chmod 755 /home/node/files

USER node

WORKDIR /home/node/.n8n

EXPOSE 5678
