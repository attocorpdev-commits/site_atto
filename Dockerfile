FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy static assets from current directory to container
COPY . /usr/share/nginx/html

# Configurar aivatech-copy.html como index.html se não existir
RUN cp /usr/share/nginx/html/aivatech-copy.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
