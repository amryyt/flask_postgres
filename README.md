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


- **Port 8000**: Flask web app (accessible via your browser)
- **Port 9001**: VNC server (for graphical access)
- **Port 22**: SSH access
- **Port 5432**: PostgreSQL database

## Accessing the Flask Web Application

After running the container, open your browser and navigate to:

```
http://localhost:8000
```

## Connecting via VNC

1. Connect to the VNC server using your favorite VNC client.
2. Use the following details:
   - **Host**: `localhost`
   - **Port**: `5901`
   - **Password**: `rootpassword` (set by Dockerfile)

## Docker Hub Image URL

You can pull the image directly from Docker Hub using the following URL:

[https://hub.docker.com/r/amryyt/flask_postgres](https://hub.docker.com/r/amryyt/flask_postgres)

## GitHub Repository URL

For the source code and Docker setup, check out the repository on GitHub:

[https://github.com/amryyt/flask_postgres](https://github.com/amryyt/flask_postgres)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```
