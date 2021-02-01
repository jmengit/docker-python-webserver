FROM python:alpine

# update apk repo
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.10/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.10/community" >> /etc/apk/repositories
RUN apk add --no-cache bash

# install chromedriver
RUN apk update
RUN apk add chromium chromium-chromedriver

# Set display port and dbus env to avoid hanging. Add chromedriver to path
ENV DISPLAY=:99
ENV DBUS_SESSION_BUS_ADDRESS=/dev/null

# Upgrade pip
RUN pip install --upgrade pip

# Python project dependencies
RUN pip install selenium
RUN pip install beautifulsoup4
RUN pip install requests

# Main script
CMD ["bash", "/scripts/main.sh"]
