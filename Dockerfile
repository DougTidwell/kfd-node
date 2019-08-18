FROM alpine

# Load any public updates from Alpine packages, upgrade
# anything that needs it, and install node and npm. 
RUN apk update && \
    apk upgrade && \
    apk add nodejs nodejs-npm

# Make a directory for our application
WORKDIR /src

# Copy everything into the image
COPY package.json app.js ./
COPY public ./public/

# Install the library dependencies for this application
RUN npm install 

# The app listens on port 3000
EXPOSE 3000

# Uncomment this line to turn on debugging
# ENV DEBUG=kfd-node:*

# Set the startup command
CMD npm start 

