FROM ubuntu
ARG USER_ID
ARG GROUP_ID
RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user
USER user
RUN apt update -y
RUN apt install apache2 -y
ADD index.html /var/www/html
CMD ["apache2ctl" , "-D", "FOREGROUND"]

