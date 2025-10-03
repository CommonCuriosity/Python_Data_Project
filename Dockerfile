# Use Node.js (great for web dev tools like npm, live-server, etc.)
FROM node:20-slim

# Set working directory
WORKDIR /app

# Install a lightweight dev server for HTML/CSS/JS
RUN npm install -g live-server

# Copy project files
COPY . .

# Default command: run live-server
CMD ["live-server", "--host=0.0.0.0", "--port=3000"]
