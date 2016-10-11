FROM registry.access.redhat.com/rhel7:latest

MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"

COPY nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum install -y nginx && \
	rpm -V nginx && \
	yum clean all && \
	mkdir -p /var/www/html && \
	chown -r 1001:0 /var/www

EXPOSE 80 443
USER 1001
CMD ["nginx", "-g", "daemon off;"]
