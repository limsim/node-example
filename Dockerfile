FROM centos

RUN yum -y update && \
	yum remove node && \
	yum install -y epel-release && \
	yum install -y make && \
	yum install -y nodejs npm && \
	npm install npm -g

WORKDIR /root/node-example
ADD . /root/node-example

EXPOSE 80
ENTRYPOINT ["node", "example.js"]