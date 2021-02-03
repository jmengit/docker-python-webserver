# docker-python-webserver

Super simple container to run a basic python webserver. Can return basic HTML or launch other python scripts on GET, POST, or HEAD

### Simple Build and Run:
The docker will automatically run a file called "main.py" if one exists in scripts directory - If desired simply map the folder that contains your scripts on your host drive to "/scripts". An example "main.py" is included on github at jmengit/docker-python-webserver
```
docker build -t python-webserver https://raw.githubusercontent.com/jmengit/docker-python-webserver/main/Dockerfile
docker run -p 8000:8000 -v "/script/directory/on/host:/scripts" python-webserver
```

### Docker-Compose YAML Example
```
version: "3.8"
services:
  python-webserver:
    image: jmendock/python-webserver
    container_name: python-webserver
    restart: unless-stopped
    ports:
      - 8000:8000
    volumes:
      - /script/directory/on/host:/scripts
```      
