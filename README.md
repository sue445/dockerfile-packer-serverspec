# dockerfile-packer-serverspec
Dockerfile with Packer and Serverspec installed

[![docker-ghcr](https://github.com/sue445/dockerfile-packer-serverspec/actions/workflows/docker-ghcr.yml/badge.svg)](https://github.com/sue445/dockerfile-packer-serverspec/actions/workflows/docker-ghcr.yml)
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/sue445/dockerfile-packer-serverspec/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/sue445/dockerfile-packer-serverspec/tree/main)

## Installed packages
* https://www.packer.io/
* https://github.com/unifio/packer-provisioner-serverspec
* https://serverspec.org/

## Usage
```bash
docker pull ghcr.io/sue445/packer-serverspec:latest
```

Image version tag is formatted like `${PACKER_VERSION}-${PACKER_PROVISIONER_SERVERSPEC_VERSION}` (e.g. `1.8.5-0.2.1`)
