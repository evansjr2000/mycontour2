FROM golang:1.17 AS builder
COPY . /var/app
WORKDIR /var/app
RUN ["go", "build", "-o", "app", "app.go"]

FROM debian:bullseye
WORKDIR /var/app
COPY --from=builder /var/app/app .
CMD ["./app"]
