# Scalable Django Web Application Deployment

This project demonstrates deploying a Django web app on AWS EC2 using Docker, Nginx, and Gunicorn—ensuring scalability, security, and high performance.

## Features

- **Django App**: Modular and scalable.
- **AWS EC2**: Production deployment with secure access.
- **Docker**: Containerized for consistent builds and easier updates.
- **Nginx**: Acts as reverse proxy and load balancer.
- **Gunicorn**: High-performance WSGI server.

## Responsibilities

- Built and containerized a scalable Django app.
- Deployed on EC2 with secure security groups.
- Set up Nginx + Gunicorn to handle high traffic.
- Achieved faster deployment and handled 10K+ concurrent connections.

## Getting Started

### Prerequisites

- Python 3.8+  
- Docker  
- AWS EC2 Access  
- Nginx, Gunicorn

### Setup

1. Clone repo:  
```bash
git clone https://github.com/yourusername/your-repo-name.git  
cd your-repo-name
bash```

2. Build and run Docker container
docker build -t django-app .  
docker run -d -p 8000:8000 django-app

3. Nginx config
server {
    listen 80;
    server_name your-domain.com;

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}

4. Start Gunicorn
gunicorn --workers 3 --bind 0.0.0.0:8000 your_project.wsgi:application

5. Deploy it to AWS EC2 as shown in the Demo video
