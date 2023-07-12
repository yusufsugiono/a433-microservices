# Menggunakan base image Node.js versi 14
FROM node:14-alpine

# Set working directory untuk container adalah /app
WORKDIR /app

# Menyalin package.json atau berkas informasi package
COPY package*.json ./

# Mengunduh script wait-for-it.sh
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

# Instal dependensi
RUN npm install

# Menyalin seluruh source code ke working directory di container
COPY . .

# Mengekspos port 3001
EXPOSE 3001

# Menjalankan npm start ketika container berhasil diluncurkan
CMD ["npm","start"]

