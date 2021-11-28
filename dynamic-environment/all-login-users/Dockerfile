FROM alpine:latest

SHELL [ "/bin/sh", "-l", "-c" ]

RUN echo 'export TEST_ENV=test-env-value' >> /etc/profile

# Checks the environment variable of the root user.
RUN echo -e "User : $(whoami)\nEnv  : $TEST_ENV" > /root/env.txt
# /root/env.txt
# User : root
# Env  : test-env-value

# Checks the environment variable of the other user.
RUN adduser -S other
USER other
RUN echo -e "User : $(whoami)\nEnv  : $TEST_ENV" > /home/other/env.txt
# /home/other/env.txt
# User : other
# Env  : test-env-value

USER root
CMD less /root/env.txt /home/other/env.txt
