FROM alpine:latest

SHELL [ "/bin/sh", "-l", "-c" ]

RUN echo 'export TEST_ENV=test-env-value-A' >> /root/.profile

RUN adduser -S other
RUN echo 'export TEST_ENV=test-env-value-B' >> /home/other/.profile

# Checks the environment variable of the root user.
RUN echo -e "User : $(whoami)\nEnv  : $TEST_ENV" > /root/env.txt
# /root/env.txt
# User : root
# Env  : test-env-value-A

# Checks the environment variable of the other user.
USER other
RUN echo -e "User : $(whoami)\nEnv  : $TEST_ENV" > /home/other/env.txt
# /home/other/env.txt
# User : other
# Env  : test-env-value-B

USER root
CMD less /root/env.txt /home/other/env.txt
