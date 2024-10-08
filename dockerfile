# Menggunakan image Node.js versi LTS sebagai base image
FROM node:18

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Menyalin seluruh kode project ke container
COPY . .

# Expose port yang digunakan oleh aplikasi
EXPOSE 3000

# Menjalankan aplikasi
CMD ["npm", "start"]
