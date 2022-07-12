FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go get github.com/
RUN cd /build && git clone

RUN cd /build/GoWebAPI/main && go build

EXPOSE 8080

ENTRYPOINT ("/build/GoWebAPI/main/main")