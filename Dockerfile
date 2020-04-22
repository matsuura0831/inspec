FROM amazonlinux:2

RUN yum update -y && \
    yum install -y curl && \
    curl https://omnitruck.chef.io/install.sh | bash -s -- -P inspec

WORKDIR /workspace