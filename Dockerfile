FROM n8nio/n8n:latest

USER root

# Установка Chrome для систем на базе Ubuntu/Debian
RUN apt-get update && \
    apt-get install -y --no-install-recommends chromium && \
    rm -rf /var/lib/apt/lists/*

# Путь к исполняемому файлу браузера
ENV N8N_PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

USER node
