#!/usr/bin/env sh
. /opt/app/pyenv/bin/activate
if [ -f /run/secrets/netbox ]; then
    . /run/secrets/netbox
    export NETBOX_URL
    export NETBOX_TOKEN
fi
python3 -u /opt/app/nb-dt-import.py $@