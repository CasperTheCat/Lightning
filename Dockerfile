FROM node:latest

COPY package*.json .
RUN npm install

# Bring in the full directory structure
# We use a subdirectory of main because we 
# don't want to take the README, etc with us
COPY Lightning/ .

EXPOSE 50000
CMD ["npm", "start"]