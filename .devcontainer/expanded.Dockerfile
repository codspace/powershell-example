FROM mcr.microsoft.com/vscode/devcontainers/universal:2

COPY library-scripts/powershell-debian.sh /tmp/library-scripts/
RUN sudo apt-get -y update && sudo bash /tmp/library-scripts/powershell-debian.sh


RUN pwsh -Command Set-PSRepository -Name PSGallery -InstallationPolicy Trusted && \
    pwsh -Command Install-Module -Name Az -Scope AllUsers -Repository PSGallery && \
    pwsh -Command Install-Module -Name Az.ResourceGraph -Scope AllUsers -Repository PSGallery && \
    pwsh -Command Install-Module -Name Pester -Scope AllUsers -Repository PSGallery && \
    pwsh -Command Set-PSRepository -Name PSGallery -InstallationPolicy Untrusted
