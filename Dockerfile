# İSG Pusulası Admin Web — Docker Image
# Hem local geliştirme hem Cloud Run deploy için hazır

FROM nginx:alpine

# nginx config — SPA routing + gzip + güvenlik başlıkları
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Statik dosyaları kopyala
COPY index.html /usr/share/nginx/html/index.html

# Cloud Run 8080 portunu expose et
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
