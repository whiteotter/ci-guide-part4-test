FROM centos:centos7.5.1804

RUN ["groupadd", "--gid", "500", "ec2-user"]
RUN ["useradd", "--system", "--create-home", "--shell", "/bin/false", "--uid", "500", "--gid", "ec2-user", "ec2-user"]

WORKDIR /mothership
RUN ["chown", "-R", "ec2-user:ec2-user", "/mothership"]

COPY --chown=ec2-user:ec2-user . .

RUN ["mkdir", "/data"]
RUN ["chown", "-R", "ec2-user:ec2-user", "/data"]

USER ec2-user
