FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    gnupg \
    lsb-release

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# Install Docker CLI
RUN curl -fsSL https://get.docker.com | sh

# Jenkins ko docker access
RUN usermod -aG docker jenkins

USER jenkins
