FROM centos:latest

MAINTAINER "wang yongzhen <zhenzhen086@126.com>"
LABEL Description="Golang Present on Centos" Vendor="yongzhen.wang" Version="1.0"

WORKDIR /root

COPY present /usr/local/bin/present
# present run need $GOPATH/src/golang.org/x/tools/cmd
COPY present.tgz /root/
COPY webhook /usr/local/bin/webhook
COPY dohook.sh /root/
COPY gitlab.json /root/
COPY entrypoint.sh /root/

RUN curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo && \
    yum makecache && \
    yum install -y git && \
    yum clean all && \
    chmod +x  /usr/local/bin/present /usr/local/bin/webhook /root/dohook.sh /root/entrypoint.sh && \
	mkdir -p /usr/local/src && \
	tar xf /root/present.tgz -C /usr/local/src && \
	rm -f /root/present.tgz

ENV GOPATH=/usr/local/src

EXPOSE 3999 9000

CMD ["/root/entrypoint.sh"]

