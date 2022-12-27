docker build -t ghcr.io/jimmyready89/karsajobs:latest . # Melakukan docker build dengan nama image karsajobs versi latest
echo $PASSWORD_GITHUB | docker login ghcr.io -u jimmyready89 --password-stdin #Perintah login ke github
docker push ghcr.io/jimmyready89/karsajobs:latest # pull image dari local pc ke github packages