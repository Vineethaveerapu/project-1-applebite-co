FROM devopsedu/webapp

LABEL version="1.0"
LABEL description="PhP website"
LABEL name="vineetha veerapu <vineethaveerapu4@gmail.com>"

# update packages
RUN apt-get update -y

# install apache server
RUN apt-get install -y apache2

# Install PHP dependencies
RUN apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip

# remove default site
RUN rm -rf /var/www/html/*
COPY website /var/www/html/

EXPOSE 80

#Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]