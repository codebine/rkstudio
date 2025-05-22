# Use official nginx image as base
FROM nginx:alpine

# Copy all files from repo to nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
