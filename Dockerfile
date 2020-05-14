FROM python:3
MAINTAINER BananaWolf <me@dingzhaobo.net>

ENV PASSWORD="password"

RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master
EXPOSE 1984
CMD ssserver -p 1984 -k $PASSWORD -m rc4-md5
