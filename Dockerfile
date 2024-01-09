# Use the official Nginx base image
FROM nginx

# Set the working directory to the default Nginx public directory
WORKDIR /usr/share/nginx/html

# Copy the custom HTML file
COPY index.html .

# Copy the entrypoint script
COPY entrypoint.sh /usr/share/nginx/html/

# Grant execute permissions to the script
RUN chmod +x entrypoint.sh

# Expose port 80 to the outside world
EXPOSE 80

# Set the entry point to the custom script
ENTRYPOINT ["/usr/share/nginx/html/entrypoint.sh"]
