sudo rm -rf /usr/share/nginx/html/*
sudo cp -r /tmp/build/* /usr/share/nginx/html
sudo cp nginx/nginx.conf /etc/nginx/nginx.conf
sudo nginx -t
sudo systemctl stop nginx
sudo systemctl start nginx
echo "Nginx deployment completed successfully."
