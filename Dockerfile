# Menggunakan base image Node.js versi 14
FROM node:14-alpine

# Set working directory untuk container adalah /app
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Mengekspos port 3001
EXPOSE 3001

# Menjalankan npm start ketika container berhasil diluncurkan
CMD ["npm","start"]
