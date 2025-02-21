# Flask PostgreSQL Docker Project

This repository contains a Dockerized Flask application connected to a PostgreSQL database. It provides a simple Flask web app that can interact with the database, and the Docker setup includes a VNC server for GUI access.

## Docker Image Build Instructions

To build the Docker image, follow these steps:

1. Clone this repository:
    ```bash
    git clone https://github.com/amryyt/flask_postgres.git
    cd flask_postgres
    ```

2. Build the Docker image using the following command:
    ```bash
    docker build -t amryyt/flask_postgres .
    ```

## Running the Container

After building the Docker image, you can run the container using the command below. This will expose the required ports for your application.

```bash
docker run -d -p 8000:8000 -p 9001:9001 -p 22:22 -p 5432:5432 -p 5901:5901 --name flask_container amryyt/flask_postgres
