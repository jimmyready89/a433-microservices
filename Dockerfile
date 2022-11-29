# Menggubakan base image node:14
FROM  node:14

# Melakaukan edit image di folder /app
WORKDIR /app

# Melakaukan copy data dari local pc ke image
COPY . .

# Setting environment variable
ENV NODE_ENV=production DB_HOST=item-db

# Menjalankan Perintah npm install
RUN npm install --production --unsafe-perm && npm run build

# Setting output port ke port 8080
EXPOSE 8080

# Menjalankna npm start ketikan menjalankan image
CMD ["npm", "start"]