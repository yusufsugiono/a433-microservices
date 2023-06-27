# Menggunakan base image Node.js versi 14
FROM node:14-alpine

# Set working directory untuk container adalah /app
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Mengatur environment variable NODE_ENV dan DB-HOST
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port 8080
EXPOSE 8080

# Menjalankan npm start ketika container berhasil diluncurkan
CMD ["npm","start"]