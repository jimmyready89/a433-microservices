docker build -t item-app:v1 . # Melakukan docker build dengan nama image item-app versi v1
docker image ls -a # Mengeluarkan daftar image
docker tag item-app:v1 ghcr.io/jimmyready89/item-app:v1 # Rename nama image
export PASSWORD_GITHUB=<password_Anda> #Setting variable password github
echo $PASSWORD_GITHUB | docker login ghcr.io -u fikrihelmi17 --password-stdin #Perintah login ke github
docker push ghcr.io/jimmyready89/item-app:v1 # pull image dari local pc ke github packages