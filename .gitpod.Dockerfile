FROM gitpod/workspace-dotnet

# Update the list of packages
RUN sudo apt-get update \
&& sudo apt-get install -y wget apt-transport-https software-properties-common \
&& wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb \
&& sudo dpkg -i packages-microsoft-prod.deb \
&& sudo apt-get update \
&& sudo add-apt-repository universe \
&& sudo apt-get install -y powershell

RUN sudo pwsh -c "&{Install-Module -Name Az -AllowClobber -Scope AllUsers -Force}"

# install azure cli
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# install AWS cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
&& unzip awscliv2.zip && sudo ./aws/install

CMD usr/bin/pwsh
