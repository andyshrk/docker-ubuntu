A dockerfile for create ubuntu with user:mybuild and sudo.

command:
```shell
docker build -t dubuntu2204 .
docker run --rm -v /opt/:/home/docker  -it --name my_ubuntu dubuntu2204 bash
```
