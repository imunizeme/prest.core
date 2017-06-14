FROM golang:1.8-alpine

RUN mkdir -p /go/src/github.com/imunizeme/prest.core
COPY . /go/src/github.com/imunizeme/prest.core
WORKDIR /go/src/github.com/imunizeme/prest.core

RUN chmod +X tcp-port-wait.sh

ENTRYPOINT ["sh", "./entrypoint.sh"]
CMD ["go", "run", "main.go"]
