FROM wizeye/n3n-ui-base
MAINTAINER Jun-Hee Lee <jh.lee@n3n.io>

# Install MongoDB
RUN yum -y install epel-release; yum clean all
RUN yum -y install mongodb-server; yum clean all
RUN yum -y install mongodb; yum clean all

# RUN mkdir -p /data/db

ADD replicaSet.sh /replicaSet.sh
ADD replicaSet.js /replicaSet.js

# Expose port 27017 from the container to the host
EXPOSE 27017

# Set usr/bin/mongod as the dockerized entry-point application
CMD ["usr/bin/mongod", "--replSet", "wizeye"]
