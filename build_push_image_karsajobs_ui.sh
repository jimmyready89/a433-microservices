docker build -t ghcr.io/jimmyready89/karsajobs-ui:latest . # Melakukan docker build dengan nama image item-app versi v1
echo $PASSWORD_GITHUB | docker login ghcr.io -u jimmyready89 --password-stdin #Perintah login ke github
docker push ghcr.io/jimmyready89/karsajobs-ui:latest # pull image dari local pc ke github packages