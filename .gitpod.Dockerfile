FROM gitpod/workspace-dotnet

RUN sudo apt-get update && sudo apt-get install -y snapd

RUN sudo snap install powershell --classic

# install azure cli
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

