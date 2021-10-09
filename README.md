# docker-geph4
Automated [build](https://github.com/docker-geph/geph4/releases) and [docker image](https://hub.docker.com/repository/docker/dockergeph/geph4) for [Geph4](https://github.com/geph-official/geph4)

# Usage
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

[Sample config file](https://aur.archlinux.org/cgit/aur.git/tree/geph4-client.default?h=geph4-client) for docker deployment. Options listed under `geph4-vpn-helper` are unused in this package.

For self hosted geph4-exit, you can specify your domain name in the following way: `OPTIONS="--override-connect PUBLIC_KEY@$(dig +short your.domain.com):PORT"`

# Credit
[LinuxServer.io](https://github.com/linuxserver) for the docker image template. This package is modeled after [docker-ddclient](https://github.com/linuxserver/docker-ddclient).

[AUR](https://aur.archlinux.org/packages/geph4-client/) for the config file template.
