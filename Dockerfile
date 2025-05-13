FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm && pnpm install

# Copy the rest of your project files
COPY . .

# Expose the Next.js dev port
EXPOSE 3000

# Start the Next.js app
CMD ["pnpm", "dev"]
