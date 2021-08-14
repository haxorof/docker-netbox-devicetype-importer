# NetBox Device Type Importer

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