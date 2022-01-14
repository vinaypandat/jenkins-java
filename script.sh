sudo docker rm -f apache_server
sudo docker rmi server_image
echo "FROM ubuntu/apache2" > Dockerfile
echo "COPY index.html /var/www/html/" >> Dockerfile
echo "COPY ./images /var/www/html/images" >> Dockerfile
echo "EXPOSE 80" >> Dockerfile

sudo docker build -t server_image .
