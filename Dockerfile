FROM alpine/helm:3.7.1

RUN apk update
RUN apk upgrade
RUN apk add py-pip curl
RUN pip install awscli
COPY ./kubectl /usr/bin/kubectl
RUN chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
