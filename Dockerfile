FROM golang:alpine

RUN apk update \  
  && apk add bash curl jq \
  && apk add --virtual build-dependencies git \
  && go get -u github.com/fullstorydev/grpcurl \
  && go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest  

RUN apk add nginx \
  && rm -rf /go/pkg \
  && rm -rf /go/src \
  && apk del build-dependencies \
  && rm -rf /var/cache/apk/*

RUN mkdir -p /run/nginx
COPY files/index.* /tmp/
COPY files/nginx.conf /etc/nginx/nginx.conf

COPY files/dishy.sh /usr/sbin/dishy
COPY files/execute.sh /usr/sbin/x

RUN chmod +x /usr/sbin/x \
    && chmod +x /usr/sbin/dishy

EXPOSE 80

RUN apk add nano sed

CMD ["/usr/sbin/x"]