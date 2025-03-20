FROM golang

WORKDIR /app

COPY ./42-docker-final-main/* /app

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /my_app

CMD ["/my_app"]