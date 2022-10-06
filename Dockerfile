FROM node:18.9.1-alpine
ENV NODE_ENV=development

# Add a working directory
WORKDIR /app

# Cach and Install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy app source
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["yarn", "start"]
