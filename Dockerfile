FROM n8nio/n8n:latest

USER root

# Установка браузера командами для Alpine Linux
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont

# Путь к браузеру в этой системе
ENV N8N_PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

USER node
