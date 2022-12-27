# Base Image
FROM node:14.21-alpine as builder

# memindahkan lokasi default current folder ketikan melakukan copy menjadi /app
WORKDIR /app

# Copy file package*.json ke image
COPY package*.json ./

# Malakuakan install packages
RUN npm install

# Copy dari host ke image
COPY . .

# Melakukan build
RUN npm run build

# mengeluarkan port 8000
EXPOSE 8000

#melakukan run npm run serve ketika image di jalankan
CMD [ "npm", "run", "serve" ]