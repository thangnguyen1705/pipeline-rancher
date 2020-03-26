FROM golang:1.11
RUN mkdir -p /go/src/github.com/rancher
        ln -s `pwd` /go/src/github.com/rancher/pipeline-example-go
        cd /go/src/github.com/rancher/pipeline-example-go
        go build -o bin/hello-server
        go test -cover
EXPOSE 80
COPY ./bin/hello-server /usr/local/bin/
CMD ["hello-server"]
