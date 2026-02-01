FROM n8nio/n8n:latest

USER root

# Используем полный путь к менеджеру пакетов и чистим кэш
RUN /usr/bin/apt-get update && \
    /usr/bin/apt-get install -y chromium chromium-sandbox && \
    rm -rf /var/lib/apt/lists/*

# Настройки для n8n
ENV N8N_PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

USER node
