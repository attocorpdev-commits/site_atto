FROM nginx:alpine

# Define working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf ./*

# Copy all files from current directory to the container
COPY . .

# Rename the main HTML file to index.html so Nginx serves it automatically
RUN mv aivatech-copy.html index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
