# docker-geph4
Automated build for https://github.com/geph-official/geph4

docker image: https://hub.docker.com/repository/docker/dockergeph/geph4

docker-compose:
```yml
services:
  geph4:
    image: dockergeph/geph4:v4.4.20
    container_name: geph4
    environment:
      - TZ=Etc/UTC
    volumes:
      - ./geph4.conf:/config/geph4.conf:ro
    ports:
      - 9909:9909
    restart: unless-stopped
```
