############## Configure ################
# Create(Build) a Node latest(18.12.1) base image
FROM node:latest
# Set the working directory to /app inside the container
WORKDIR /app
# 
COPY package.json ./
#
RUN npm install react-router-dom
# 
COPY . . 
# 
CMD ["npm", "start"]