FROM alpine

RUN apk update && apk add tar

WORKDIR /root

ENV NAME=default

CMD tar -zcvf /root/$NAME.tar.gz -C /root .
