FROM ghcr.io/actions/actions-runner:latest

RUN sudo apt update -y && \
    sudo apt install -y curl && \
    curl -sL https://deb.nodesource.com/setup_20.x -o /tmp/nodesource_setup.sh && \ 
    sudo sh /tmp/nodesource_setup.sh && \
    sudo apt update -y && \
    sudo apt install -y \
        dotnet-sdk-7.0 \
        nodejs && \
    sudo npm -g install pnpm
