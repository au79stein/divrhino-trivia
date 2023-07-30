FROM golang:1.19.0

WORKDIR /usr/src/app
#
RUN go install github.com/cosmtrek/air@latest

COPY . .
# go mod tidy will make sure all go packages are properly installed
RUN go mod tidy
