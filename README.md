# Onion Service Docker Image

A simple docker container for Tor onion service.


# Usage

Basic ```docker run``` command:
```sh
docker run --name onion-service mucahitkurtlar/onion-service:latest
```

Or you can use ```docker-compose```:
```sh
docker-compose up
``` 
```docker-compose.yml```
```yaml
version: "3.9"
services:
  onion-service:
    image: "mucahitkurtlar/onion-service:latest"
```
Get onion address:
```sh
docker exec -it onion-service cat /var/lib/tor/website/hostname
```
