# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.163.1/containers/typescript-node/.devcontainer/base.Dockerfile

# [Choice] Node.js version: 14, 12, 10
ARG VARIANT="14-buster"
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
RUN curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip --output /tmp/ngrok.zip \
    && unzip /tmp/ngrok.zip -d /tmp/ \
    && rm /tmp/ngrok.zip \
    && chmod +x /tmp/ngrok \
    && mv /tmp/ngrok /usr/bin/

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends ca-certificates curl apt-transport-https lsb-release gnupg \
    && curl -sL https://packages.microsoft.com/keys/microsoft.asc | \
    gpg --dearmor | \
    tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null \
    && echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ `lsb_release -cs` main" | \
    tee /etc/apt/sources.list.d/azure-cli.list \
    && apt-get update && apt-get -y install azure-cli

# [Optional] Uncomment if you want to install an additional version of node using nvm
# ARG EXTRA_NODE_VERSION=10
# RUN su node -c "source /usr/local/share/nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"

# [Optional] Uncomment if you want to install more global node packages
# RUN su node -c "npm install -g  /workspaces/chat-bot/standup-bot/packages.json"

WORKDIR /workspaces/chat-bot/standup-bot/
RUN su node -c "npm install"
