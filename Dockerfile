#Base Image
FROM golang:1.15-alpine

#memindahkan lokasi default current folder ketikan melakukan copy menjadi /go/src/github.com/dicodingacademy/karsajobs
WORKDIR /go/src/github.com/dicodingacademy/karsajobs
#Setting environment GO111MODULE dengan value on
ENV GO111MODULE=on
#Setting environment APP_PORT dengan value 8080
ENV APP_PORT=8080

#Copy file go.mod ke image
COPY go.mod .
#Copy file go.sum ke image
COPY go.sum .
#Melakukkan download packages 
RUN go mod download

#Melakukan copy file dari host ke image
COPY . .
# membuat folder build
RUN mkdir /build; \

# membuat folder build
go build -o /build/ ./...

# mengeluarkan port 8080
EXPOSE 8080
# melakukan run /build/web ketika image di jalankan
CMD ["/build/web"]
