Descargar la imagen de Docker Hub
	docker pull jesusmuladaw/mi-php:apache

Consuir y ejecutar imagen:
	docker run --name php-apache -p 8080:80 -p 8443:443 -d mi-php:apache
