## ssh-chat in docker

Docker version of the [ssh-chat](https://github.com/shazow/ssh-chat)

### Requirements

- Docker
- docker-compose

### Usage

```shell
$ ./start
```

#### For admin privileges paste the public ssh key in ./admins

```shell
cat ~/.ssh/id_rsa.pub >> admins && ./start
```
