FROM golang

ADD . $GOPATH/src/go_docker_example

WORKDIR $GOPATH/src/go_docker_example

RUN cd  $GOPATH/src/go_docker_example; go build -o app

EXPOSE 8080

ENTRYPOINT [ "./app" ]