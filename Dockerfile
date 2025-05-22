# Use lightweight nginx image
FROM nginx:alpine

# Remove default nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy all your project files (HTML, assets, etc) to nginx's html directory
COPY . /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start nginx server (this is default command for nginx image)
CMD ["nginx", "-g", "daemon off;"]
