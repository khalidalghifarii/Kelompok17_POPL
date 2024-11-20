# Menggunakan image Nginx sebagai base image
FROM nginx:alpine

# Menyalin semua file dan folder ke direktori Nginx
COPY . /usr/share/nginx/html

# Expose port 80 (default untuk Nginx)
EXPOSE 80
