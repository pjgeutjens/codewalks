FROM gitpod/workspace-dotnet

# Install system components
RUN apt-get update && apt-get install -y curl apt-transport-https

# Import the public repository GPG keys
RUN curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Register the Microsoft Product feed
RUN sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-jessie-prod jessie main" > /etc/apt/sources.list.d/microsoft.list'

# Update the list of products
RUN apt-get update && apt-get install -y powershell

# install azure cli
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

