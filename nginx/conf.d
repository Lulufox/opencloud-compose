server {
    listen 80;
    server_name _;  # или ваш домен (например, example.com)

    location /kilroy {
            alias /root/static/kilroy.html;
            try_files $uri $uri/ =404;
        }

    location / {
        root /usr/share/nginx/html;
        index index.html;
    }

}