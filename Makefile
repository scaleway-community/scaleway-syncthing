DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-syncthing
VERSION =		latest
VERSION_ALIASES =	v0.11.8
TITLE =			Syncthing
DESCRIPTION =		Syncthing node
SOURCE_URL =		https://github.com/scaleway/image-app-syncthing
IMAGE_VOLUME_SIZE =	150G

# Forward ports
SHELL_DOCKER_OPTS ?=    -p 8384:8384

## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk


## Here you can add custom commands and overrides
