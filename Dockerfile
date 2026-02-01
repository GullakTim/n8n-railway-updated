FROM n8nio/n8n:latest

USER root

# Устанавливаем только браузер Chromium самой простой командой
RUN apk add --no-cache chromium

# Прописываем правильные пути для этой системы
ENV N8N_PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

USER node
