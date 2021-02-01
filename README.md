# docker-python-chromedriver

Super simple container to run basic basic python scripts that require chromedriver and selenium.

### Simple Build and Run:
Map the folder that contains your scripts on your host drive to "/scripts" - The docker will automatically run a file called "main.sh" if one exists in scripts directory.
```
docker build -t python-chromedriver https://raw.githubusercontent.com/jmengit/docker-python-chromedriver/main/Dockerfile
docker run -v "/script/directory/on/host:/scripts" python-chromedriver
```

### Docker-Compose YAML Example
```
version: "3.8"
services:
  python-chromedriver:
    image: jmendock/python-chromedriver
    container_name: python-chromedriver
    restart: unless-stopped
    volumes:
      - /script/directory/on/host:/scripts
```      
