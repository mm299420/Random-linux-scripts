server {
    listen 80;
    listen [::]:80;
    server_name mm29942.com www.mm29942.com;
    return 302 https://$server_name$request_uri;
}

server {

    # SSL configuration

    listen 443 ssl http2;
    listen [::]:443 ssl http2;
    ssl_certificate         /etc/ssl/mm29942.pem;
    ssl_certificate_key     /etc/ssl/mm29942-key.pem;

    server_name mm29942.com www.mm29942.com;

    root /var/www/html;
    index *.php index.html index.htm index.nginx-debian.html;


    location / {
            try_files $uri $uri/ =404;
    }
}
