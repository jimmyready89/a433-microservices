FROM golang:1.15-alpine #Base Image

WORKDIR /go/src/github.com/dicodingacademy/karsajobs #memindahkan lokasi default current folder ketikan melakukan copy menjadi /go/src/github.com/dicodingacademy/karsajobs
ENV GO111MODULE=on #Setting environment GO111MODULE dengan value on
ENV APP_PORT=8080 #Setting environment APP_PORT dengan value 8080

COPY go.mod . #Copy file go.mod ke image
COPY go.sum . #Copy file go.sum ke image
RUN go mod download #Melakukkan download packages 

COPY . . #Melakukan copy file dari host ke image
RUN mkdir /build; \ # membuat folder build

go build -o /build/ ./... # membuat folder build

EXPOSE 8080 # mengeluarkan port 8080
CMD ["/build/web"] # melakukan run /build/web ketika image di jalankan
