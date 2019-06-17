# cloud_team_docker_bind

## build container

```
 docker build -t dns_image .

```

## run your container

```
docker run -d -p 53:53/udp -p 53:53 --rm  --name test dns_image

```
## map your local directory inside your container

```
docker run -d -p 53:53/udp -p 53:53 --rm  -v /root/dns/conf:/etc/named --name test dns_image

```

## test your dns

```
dig @ip.addr ahome.africa
```

