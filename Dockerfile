FROM golang:1.11
RUN mkdir -p /go/src/github.com/rancher
RUN ln -s `pwd` /go/src/github.com/rancher/pipeline-example-go
RUN cd /go/src/github.com/rancher/pipeline-example-go
RUN go build -o bin/hello-server
RUN go test -cover
EXPOSE 80
COPY ./bin/hello-server /usr/local/bin/
CMD ["hello-server"]
