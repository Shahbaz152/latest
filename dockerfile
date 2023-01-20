FROM centos:7
LABEL Name="Shahbaz"
LABEL Emailid="alam.ggmail.com"
RUN yum install -y apache2
RUN yum install -y zip
RUN yum install -y unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/koppee.zip /var/www/html
RUN unzip koppee.zip
RUN cp -rvf  coffee-shop-html-template/* .
RUN rm -rf coffee-shop-html-template koppee.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
