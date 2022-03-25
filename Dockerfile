FROM python:3.10.4-alpine

LABEL org.opencontainers.image.title="haxorof/netbox-devicetype-importer" \
    org.opencontainers.image.description="NetBox Device Type Importer"

#COPY minitriga/Netbox-Device-Type-Library-Import/requirements.txt .
COPY entrypoint.sh .
# Temporary workaround for https://github.com/minitriga/Netbox-Device-Type-Library-Import/issues/28
COPY requirements.txt .

RUN apk add --no-cache linux-headers \
    build-base \
    libffi-dev \
    openssl-dev \
    cargo \
    git \
    && chmod +x /entrypoint.sh \
    && python3 -m venv /opt/app/pyenv \
    && . /opt/app/pyenv/bin/activate \
    && python3 -m pip install --no-cache-dir --upgrade pip \
    && python3 -m pip install --no-cache-dir -r requirements.txt \
    && rm -rf /var/cache/apk/* \
    && rm -rf /root/.cache

WORKDIR /opt/app
COPY .env .
COPY ./minitriga/Netbox-Device-Type-Library-Import/*.py ./
COPY ./minitriga/Netbox-Device-Type-Library-Import/LICENSE .
COPY ./minitriga/Netbox-Device-Type-Library-Import/README.md .

ENTRYPOINT [ "/entrypoint.sh" ]