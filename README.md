# NetBox Device Type Importer

[![Docker Pulls](https://img.shields.io/docker/pulls/haxorof/netbox-devicetype-importer)](https://hub.docker.com/r/haxorof/netbox-devicetype-importer/)
[![License](https://img.shields.io/github/license/haxorof/docker-netbox-devicetype-importer)](https://hub.docker.com/r/haxorof/netbox-devicetype-importer/)
[![CI](https://github.com/haxorof/docker-netbox-devicetype-importer/workflows/CI/badge.svg)](https://github.com/haxorof/docker-netbox-devicetype-importer/actions?query=workflow%3ACI)

This Docker wraps [Netbox Device Type Import](https://github.com/minitriga/Netbox-Device-Type-Library-Import) which helps you imports device types found in the [NetBox Device Type Library Repository](https://github.com/netbox-community/devicetype-library).

## Usage

To use this you will need to set the `NETBOX_URL`and `NETBOX_TOKEN` in a file which you then mount into the container under `/run/secrets/netbox`, example:

```shell
docker run --rm -v ${PWD}/netbox:/run/secrets/netbox haxorof/netbox-devicetype-importer:latest
```

If you want to add some arguments then you can just do that at the end:

```shell
docker run --rm -v ${PWD}/netbox:/run/secrets/netbox haxorof/netbox-devicetype-importer:latest --vendors "cisco hpe"
```

For more details of available arguments please visit [Netbox Device Type Import](https://github.com/minitriga/Netbox-Device-Type-Library-Import)
