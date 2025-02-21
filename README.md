Flask PostgreSQL Docker Project
This project provides a Dockerized Flask application connected to a PostgreSQL database. The setup includes a VNC server for graphical access and SSH capabilities for remote access. The Flask web application allows easy interaction with the database.
Prerequisites
Docker
Git
A web browser
VNC client (for graphical access)
Installation & Setup
1. Clone the Repository
Start by cloning the repository to your local machine:
git clone https://github.com/amryyt/flask_postgres.git
cd flask_postgres

2. Build the Docker Image
Next, build the Docker image with the following command:
docker build -t amryyt/flask_postgres .

3. Running the Container
Once the image is built, run the container using this command:
docker run -d \
  -p 8000:8000 \  # Flask web app (access via browser)
  -p 9001:9001 \  # VNC server (for GUI access)
  -p 22:22 \      # SSH access
  -p 5432:5432 \  # PostgreSQL database
  -p 5901:5901 \  # VNC port
  --name flask_container \
  amryyt/flask_postgres

Ports Explanation:
8000: Access the Flask web app in your browser.
9001: Connect to the VNC server for graphical access.
22: SSH access to the container.
5432: PostgreSQL database access.
5901: VNC server port for GUI access.
4. Accessing the Flask Web Application
After the container is running, open your browser and navigate to:
http://localhost:8000

5. Connecting via VNC
To access the VNC server, use your favorite VNC client with the following credentials:
Host: localhost
Port: 5901
Password: rootpassword (set in Dockerfile)
Docker Hub Image
You can also pull the image directly from Docker Hub with the following link:
Docker Hub Image
GitHub Repository
To view the source code, contribute, or report issues, visit the GitHub repository:
GitHub Repository
Contribution & Support
Contributions are welcome! Feel free to submit pull requests, report issues, or ask questions via the GitHub repository. If you encounter any problems, please open an issue, and we'll be happy to assist.
