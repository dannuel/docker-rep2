# Layer1: Use P
FROM node:22
# Layer2: Set working directory
WORKDIR /app
# Layer3: Copy files
COPY package*.json ./
# Layer4: Run the app
RUN npm install
# copy all files to the current directory
COPY . .
# define the environment variable: Expose port
EXPOSE 5000
# Command to run app
CMD ["npm", "start"]