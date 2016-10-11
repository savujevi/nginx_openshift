FROM registry.access.redhat.com/rhel7:latest

MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"

RUN yum install epel-release && \
	yum install -y nginx && \
	rpm -V nginx && \
	yum clean all

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]