FROM centos:7
RUN yum install wget  -y && \
    yum install telnet -y && yum install net-tools \
    yum install vim -y && yum install rpcbind -y && yum install nfs-utils -y 
ENV NODE_VERSION 6.11.3

RUN curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
    && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 --no-same-owner \
    && rm "node-v$NODE_VERSION-linux-x64.tar.xz" \
    && ln -s /usr/local/bin/node /usr/local/bin/nodejs 

ADD src /app

WORKDIR /app

EXPOSE 22 80 443

ENV PORT 80

CMD ["node", "bin/www"]
