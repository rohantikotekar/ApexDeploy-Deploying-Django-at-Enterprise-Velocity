FROM python:3.8.13-slim-buster


RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY / helloworld/helloworld/
COPY manage.py .


COPY nginx.conf /etc/nginx/nginx.conf


COPY start.sh .
RUN chmod +x start.sh

COPY gunicorn.conf /app/


EXPOSE 80
EXPOSE 8000


CMD ["./start.sh"]
