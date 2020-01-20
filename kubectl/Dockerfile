FROM nickschuch/base:latest

# AWS CLI is required when authenticating with EKS.
RUN apt install -y awscli vim

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

USER nick

ENTRYPOINT ["kubectl"]