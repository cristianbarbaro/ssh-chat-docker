## ssh-chat in docker

Docker version of the [ssh-chat](https://github.com/shazow/ssh-chat)

### Requirements

- Docker
- docker-compose

### Usage

```shell
$ ./start
```

### Clients access

```shell
ssh <username<@<server_ip> -p 2022
```

### Stop service

```shell
docker-compose stop
```

#### For admin privileges paste the public ssh key in ./admins (one per line)

```shell
cat ~/.ssh/id_rsa.pub >> admins && ./start
```
