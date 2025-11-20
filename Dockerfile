FROM nginx:latest

WORKDIR /usr/share/nginx/html

COPY src /usr/share/nginx/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
