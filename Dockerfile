FROM python:latest

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install beautifulsoup4
RUN pip install requests

# Default env variables
ENV listen_ip=0.0.0.0
ENV listen_port=8000
ENV PYTHONUNBUFFERED 1

EXPOSE ${listen_port}

# Main script
CMD python /scripts/main.py -l $listen_ip -p $listen_port
