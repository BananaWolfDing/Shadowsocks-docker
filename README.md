# Shadowsocks - Dockerfile

[Shadowsocks](https://shadowsocks.org/en/index.html) is an open-source and cross-platform encryption protocol project based on Socks5, which seems to be widely used against GFW.

The Dockerfile is created according to the official documentation from [Shadowsocks Python](https://github.com/shadowsocks/shadowsocks/tree/master), and will help you build a image of server side Shadowsocks.

## Install
Clone the Dockerfile and build the docker image.
```bash
git clone https://github.com/BananaWolfDing/Shadowsocks-docker.git
docker build -t bananawolf/shadowsocks Shadowsocks-docker/
```

## Usage
To start the service on port 1984 with default password as "password":
```bash
docker container run -d -p 1984:1984 bananawolf/shadowsocks
```

To start the service with your own configuration:
```bash
docker container run -d \
    -p [your-own-port]:1984 \
    -e PASSWORD=[your-own-password] \
    --name [your-own-docker-name] \
    bananawolf/shadowsocks
```

## Encryption
By default, **rc4-md5** is applied for encryption.

## License
[Apache License 2.0](https://choosealicense.com/licenses/apache-2.0/)
