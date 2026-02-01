FROM n8nio/n8n:latest

USER root

# Установка браузера Chromium и системных библиотек
RUN apt-get update && apt-get install -y \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont

# Указываем n8n путь к браузеру
ENV N8N_PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

USER node
