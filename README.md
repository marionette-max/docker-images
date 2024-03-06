[![Docker Image Version](https://img.shields.io/docker/v/marionette-max/portainer?sort=date&label=Version)](https://hub.docker.com/r/marionette-max/portainer/tags)
[![Docker Image Size](https://img.shields.io/docker/image-size/marionette-max/portainer?label=Image%20Size)](https://hub.docker.com/r/marionette-max/portainer/tags)
[![Docker Pulls](https://img.shields.io/docker/pulls/marionette-max/portainer?label=Pulls)](https://hub.docker.com/r/marionette-max/portainer)
[![Docker Stars](https://img.shields.io/docker/stars/marionette-max/portainer?label=Docker%20Stars)](https://hub.docker.com/r/marionette-max/portainer)

# Portainer

[Portainer](https://www.portainer.io/) Portainer accelerates container adoption. It reduces operational complexity and addresses the security challenges of running containers in Docker, Swarm, Nomad and Kubernetes.

# Image reason

* Changed background color

# Spec

## Environment variables

This variables passes the names of the color to change background color

* `PORTAINER_LIGHT_BG_COLOR`
* `PORTAINER_DARK_BG_COLOR`
* `PORTAINER_HIGH_BG_COLOR`

## Expose ports

* `tcp/9000` - Portainer listening endpoint

## Volumes

* No any volumes

# Inside

* Portainer v2.19.1

# Launch

```shell
docker run --rm --interactive --tty \
  --env PORTAINER_LIGHT_BG_COLOR='#ff0000' \
  --env PORTAINER_DARK_BG_COLOR='#00ff00' \
  --env PORTAINER_HIGH_BG_COLOR='#0000ff' \
  --publish 8000:8000 \
  --publish 9000:9000 \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  marionette-max/portainer
```

