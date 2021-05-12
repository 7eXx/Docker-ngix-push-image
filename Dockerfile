FROM nginx:stable-alpine

COPY nginx/index.html /usr/share/nginx/html

EXPOSE 80

EXPOSE 443
