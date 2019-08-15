FROM alpine

# load any public updates from Alpine packages, 
# upgrade anything that needs it, and install 
# node and npm. 
RUN apk update && \
    apk upgrade && \
    apk add nodejs nodejs-npm

# make a directory for our application
WORKDIR /src

# Copy everything into the image
COPY package.json app.js ./
COPY public ./public/

# install the library dependencies for this application
RUN npm install 

# Set the startup command
CMD ["npm", "start"]