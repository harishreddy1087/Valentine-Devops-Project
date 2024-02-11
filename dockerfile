# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory inside the container
RUN rm /etc/nginx/conf.d/default.conf

# Copy your HTML and CSS files to the working directory
COPY finally.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY yes.html /usr/share/nginx/html/
COPY nextpage.html /usr/share/nginx/html/

# Expose the default Nginx port
EXPOSE 80

# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
