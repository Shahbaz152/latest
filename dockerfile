FROM centos:7
LABEL Name="Shahbaz"
LABEL Emailid="alam.ggmail.com"
RUN yum install -y httpd
RUN yum install -y zip
RUN yum install -y unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page283/bloscot.zip /var/www/html
RUN unzip bloscot.zip
RUN cp -rvf  html/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
