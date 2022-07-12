FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go get github.com/AlfarrelIndrawan/GoWebAPI
RUN cd /build && git clone github.com/AlfarrelIndrawan/GoWebAPI.git

RUN cd /build/GoWebAPI/main && go build

EXPOSE 8080

ENTRYPOINT ("/build/GoWebAPI/main/main")