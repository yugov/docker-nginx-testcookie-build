## What is `docker-nginx-testcookie-build`?

`docker-nginx-testcookie-build` is a tool to building stable deb package Nginx with testcookie module in docker(Debian Stretch image). How’s it works? You create docker container with instructions to building Nginx with testcookie. After starting the container, two deb packages appear in the ./target directory of the project (the package and the package with the active debug option)

## Usage

```
git clone git@github.com:yugov/docker-nginx-testcookie-build.git
cd docker-nginx-testcookie-build
```
To building conteiner:
```
make build 
(or simple "make". "build" is defaul options)
```
Usage with proxy server (eq Squid):
```
export http_proxy="http://login:password@proxy_ip:3128"
export https_proxy="http://login:password@proxy_ip:3128"
make proxy_run
```
Usage with direct internet access:
```
make run
```
Deb packages will appear in the ./target directory.
