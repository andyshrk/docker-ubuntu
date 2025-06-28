FROM docker.m.daocloud.io/library/ubuntu:22.04

# 安装 sudo 并创建普通用户
RUN apt-get update && apt-get install -y sudo \
    && useradd -m -s /bin/bash mybuild \
    && echo "mybuild ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# 切换到普通用户
USER mybuild
WORKDIR /home/mybuild
