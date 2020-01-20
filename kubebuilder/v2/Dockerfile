FROM nickschuch/base:latest

RUN wget https://dl.google.com/go/go1.13.6.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.13.6.linux-amd64.tar.gz && \
    rm -f go1.13.6.linux-amd64.tar.gz && \
    chown -R nick:nick /usr/local/go

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

RUN curl -L https://go.kubebuilder.io/dl/2.2.0/linux/amd64 | tar -xz -C /tmp/ && \
    mv /tmp/kubebuilder_2.2.0_linux_amd64 /usr/local/kubebuilder && \
    chown -R nick:nick /usr/local/kubebuilder
     
USER nick

ENV GO111MODULE=on
ENV GOPATH /home/nick/code
ENV PATH /usr/local/go/bin:$PATH
ENV PATH /usr/local/kubebuilder/bin:$PATH

RUN go install sigs.k8s.io/kustomize/kustomize/v3

CMD ["bash"]