FROM amazonlinux:2.0.20181010

ADD https://s3.dualstack.eu-west-1.amazonaws.com/aws-xray-assets.eu-west-1/xray-daemon/aws-xray-daemon-3.x.rpm /tmp
RUN yum install shadow-utils -y
RUN cd /tmp && yum install aws-xray-daemon-3.x.rpm -y

ENTRYPOINT ["/usr/bin/xray"]