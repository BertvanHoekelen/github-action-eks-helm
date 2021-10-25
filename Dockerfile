FROM alpine/helm:3.7.1

ARG KUBECTL_VERSION="1.14.6"

RUN apk add py-pip curl
RUN pip install awscli
RUN curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.20.4/2021-04-12/bin/darwin/amd64/kubectl
RUN chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
