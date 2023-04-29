#!/bin/sh
set -e

# Start Nginx
service nginx start

# Start Gunicorn
gunicorn --bind 0.0.0.0:8000 helloworld.helloworld.wsgi:application
