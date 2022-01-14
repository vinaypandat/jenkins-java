echo "FROM vinaypandat/apache" > Dockerfile
echo "COPY index.html /var/www/html/" >> Dockerfile
echo "COPY ./images /var/www/html/" >> Dockerfile
echo "EXPOSE 80" >> Dockerfile
echo "CMD service apache2 start" >> Dockerfile

sudo docker build -t server_image .
sudo docker run -t -d -p 82:80 --name apache_server server_image
sudo docker ps -a