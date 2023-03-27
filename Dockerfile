# Use the official WordPress image as the base image
FROM wordpress:latest

# Set the working directory
WORKDIR /var/www/html

# Copy your theme files to the appropriate directory in the container
COPY ./wp-content/themes/my-theme /var/www/html/wp-content/themes/my-theme

# Copy your plugin files to the appropriate directory in the container
COPY ./wp-content/plugins/my-theme /var/www/html/wp-content/plugins/my-theme

#COPY ./docker-entrypoint.sh /usr/local/bin/
#COPY ./docker-compose.yml /var/www/html/

# Expose the required ports (HTTP and/or HTTPS)
EXPOSE 80 443