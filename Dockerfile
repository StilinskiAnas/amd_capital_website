FROM nginx:alpine

# Install curl for healthcheck
RUN apk add --no-cache curl

# Copy the website files to the Nginx server
COPY . /usr/share/nginx/html/

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]