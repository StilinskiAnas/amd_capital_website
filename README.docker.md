# Docker Setup for AMD CAPITAL Website

This repository contains a Docker configuration to serve the AMD CAPITAL website using Nginx.

## Prerequisites

- Docker installed on your machine
- Docker Compose installed on your machine

## Getting Started

### Using Docker Compose (Recommended)

1. Navigate to the project directory:
   ```bash
   cd path/to/project
   ```

2. Build and start the container:
   ```bash
   docker-compose up -d
   ```

3. Access the website at http://localhost:8080

4. To stop the container:
   ```bash
   docker-compose down
   ```

### Using Docker Directly

1. Navigate to the project directory:
   ```bash
   cd path/to/project
   ```

2. Build the Docker image:
   ```bash
   docker build -t amd-capital-website .
   ```

3. Run the container:
   ```bash
   docker run -d -p 8080:80 amd-capital-website
   ```

4. Access the website at http://localhost:8080

5. To stop the container:
   ```bash
   docker stop $(docker ps -q --filter ancestor=amd-capital-website)
   ```

## Configuration

- The website is served on port 8080 by default. You can change this in the `docker-compose.yml` file.
- The website files are mounted as a volume, so any changes to the files will be reflected immediately without rebuilding the container (when using Docker Compose).

## Troubleshooting

- If you encounter permission issues, make sure the files have the correct permissions for Nginx to read them.
- If the website doesn't load, check if the container is running with `docker ps` or `docker-compose ps`.