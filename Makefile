NAME =			syncthing
VERSION =		latest
VERSION_ALIASES =	0.11.26 0.11 0
TITLE =			Syncthing
DESCRIPTION =		Syncthing node
SOURCE_URL =		https://github.com/scaleway-community/scaleway-syncthing

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Syncthing

# Forward ports
SHELL_DOCKER_OPTS ?=    -p 8384:8384

## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
