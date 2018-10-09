FROM golang:1.10.0-stretch


COPY . /go/src/github.com/AppsterdamMilan/hangoutschatbot

RUN go build -o /app github.com/AppsterdamMilan/hangoutschatbot

WORKDIR /

EXPOSE 8080
ENTRYPOINT ["/app"]