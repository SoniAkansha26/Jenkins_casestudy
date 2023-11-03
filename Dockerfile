FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
ADD index.html /var/www/html
CMD ["apache2ctl" , "-D", "FOREGROUND"]
