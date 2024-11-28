# Use an official Nginx image from Docker Hub
FROM nginx:latest

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy a basic HTML file to serve
COPY index.html /usr/share/nginx/html/

# Expose port 80 to serve web traffic
EXPOSE 80

# Start Nginx in the foreground (this keeps the container running)
CMD ["nginx", "-g", "daemon off;"]
