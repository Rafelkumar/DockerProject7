FROM ubuntu:latest
RUN apt-get update && apt-get upgrade
RUN apt-get install nginx -y
COPY . /var/www/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]