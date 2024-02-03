FROM mcr.microsoft.com/vscode/devcontainers/base:0-bullseye

ARG TF_VERSION=1.7.2
ARG TFLINT_VERSION=0.50.2

# Install dependencies.
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y wget \
    && apt install -y unzip \
    && apt install -y vim \
    && apt install -y openssh-client

# Install Terraform
RUN wget -O /tmp/tf.zip https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip \
    && unzip /tmp/tf.zip -d /usr/local/bin \
    && rm /tmp/tf.zip \
    && terraform version

# Install TFLint
RUN wget -O /tmp/tflint.zip https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_amd64.zip \
    && unzip /tmp/tflint.zip -d /usr/local/bin \
    && rm /tmp/tflint.zip \
    && tflint --version

# Install Azure CLI.
RUN wget -O /tmp/az_install.sh https://aka.ms/InstallAzureCLIDeb \
    && chmod +x /tmp/az_install.sh \
    && /tmp/az_install.sh \
    && rm /tmp/az_install.sh \
    && az --version
