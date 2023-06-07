FROM golang:1.15-alpine
#* Docker akan mengunduh/mengambil base image bernama golang dari Docker Hub dengan tag 1.15-alpine.
#* Bila sudah pernah diunduh sebelumnya, Docker akan mengambil dari lokal.

WORKDIR /go/src/github.com/dicodingacademy/karsajobs
#* Menentukan lokasi working directory

ENV GO111MODULE=on
#* Mengaktifkan Go Module

ENV APP_PORT=8080
#* Menentukan port aplikasi

COPY go.mod .
#* 
COPY go.sum .
RUN go mod download

COPY . .
RUN mkdir /build; \
    go build -o /build/ ./...

EXPOSE 8080
#* #* membuat container dapat diakses melalui port 8080.

CMD ["/build/web"]