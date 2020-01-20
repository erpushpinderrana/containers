FROM golang:1.13

ENV KUBEBUILDER_VERSION=2.2.0

RUN curl -L -O "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v${KUBEBUILDER_VERSION}/kubebuilder_${KUBEBUILDER_VERSION}_linux_amd64.tar.gz" && \
      tar -zxvf kubebuilder_${KUBEBUILDER_VERSION}_linux_amd64.tar.gz && \
      mv kubebuilder_${KUBEBUILDER_VERSION}_linux_amd64 /usr/local/kubebuilder

ENV PATH=$PATH:/usr/local/kubebuilder/bin

ENTRYPOINT ["kubebuilder"]
