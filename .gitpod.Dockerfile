FROM gitpod/workspace-dotnet

RUN sudo apt-get update && apt-get install snapd

RUN sudo snap install powershell --classic

# install azure cli
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

