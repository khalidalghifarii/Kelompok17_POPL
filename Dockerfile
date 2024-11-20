# Menggunakan image Nginx sebagai base image
FROM nginx:alpine

# Menyalin file website (HTML, CSS, dan JavaScript) ke direktori Nginx
COPY . /usr/share/nginx/html

# Expose port 80 (Nginx default)
ENV PORT 8080
EXPOSE 8080

# Tidak perlu menjalankan perintah CMD karena Nginx secara otomatis akan berjalan
