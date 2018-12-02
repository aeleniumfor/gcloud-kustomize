FROM google/cloud-sdk:alpine

ADD https://github.com/kubernetes-sigs/kustomize/releases/download/v1.0.10/kustomize_1.0.10_linux_amd64 ./
RUN mv kustomize_1.0.10_linux_amd64 kustomize && \
    chmod +x ./kustomize && \
    mv ./kustomize /usr/bin/  && \ 
    apk --update add openjdk7-jre && \
    gcloud components install app-engine-java kubectl  && \
    apk add git
