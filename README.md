This is the screen recording of this project: https://drive.google.com/drive/u/2/folders/1zQR3TbaSGn2fXvWpPE_EVhJAsygIeYxD

# Scalable Django Web Application Deployment

This project demonstrates a scalable and secure deployment strategy for a Django web application using AWS EC2, Docker, Nginx, and Gunicorn. It includes setting up a production environment from scratch, configuring security groups, containerizing the application, and managing traffic efficiently.

## Project Features

- **Django Application**: A modular and scalable web application built with Django.
- **AWS EC2 Deployment**: Detailed steps to configure and deploy the application on AWS EC2 instances.
- **Docker Containerization**: Instructions for creating Docker images and running the application in a containerized environment.
- **Nginx Reverse Proxy**: Configuring Nginx as a reverse proxy to manage traffic and enhance security.
- **Gunicorn WSGI Server**: Setting up Gunicorn to serve the Django application, optimizing for performance.

## Getting Started

### Prerequisites

- Python 3.8+
- Docker
- AWS Account with EC2 access
- Nginx
- Gunicorn

### Installation

1. Clone the Repository of the web application
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
2. Build Docker Image:
docker build -t django-app .
3. Run Docker Container:
docker run -d -p 8000:8000 django-app
4. Configure Nginx
Set up Nginx as a reverse proxy to forward traffic to the Docker container.
server {
    listen 80;
    server_name your-domain.com;

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
5. Start Gunicorn
Run Gunicorn to serve the Django application.
gunicorn --workers 3 --bind 0.0.0.0:8000 your_project.wsgi:application

### Deployment
Use AWS EC2 for deploying the application with security groups configured for HTTP/HTTPS access.
Set up auto-scaling groups and load balancers as needed to handle traffic.

### License
This project is licensed under the MIT License - see the LICENSE file for details.

This README provides a detailed guide for setting up and deploying the Django application, ensuring that other developers or team members can easily replicate the setup.


