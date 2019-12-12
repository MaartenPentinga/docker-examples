FROM nginx:alpine
LABEL Maintainer="Maarten Pentinga"
LABEL Description="nginx Alpine contianer" Vendor="Pruts" Version="0.1"
EXPOSE 80/tcp

# Container specific
RUN apk update && apk upgrade

# Add site
ADD sources/html/index.html /usr/share/nginx/html/index.html

