FROM centos:centos7.5.1804

# Set user and group environment to a non-root user matching AWS environment. 
# This is good for security and helpful with some of the ops scripts which 
# expect the uid,gid to match prod/staging/etc during deployment actions. 
RUN groupadd --gid 777 ec2-user && \ 
useradd --system --create-home --shell /bin/false --uid 777 --gid ec2-user ec2-user

RUN mkdir /mothership && \ 
chown -R ec2-user:ec2-user /mothership

USER ec2-user

WORKDIR /mothership
