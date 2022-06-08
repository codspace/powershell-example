#!/usr/bin/env pwsh

Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-Module -Name Az -Scope AllUsers -Repository PSGallery
Install-Module -Name Az.ResourceGraph -Scope AllUsers -Repository PSGallery
Install-Module -Name Pester -Scope AllUsers -Repository PSGallery
Set-PSRepository -Name PSGallery -InstallationPolicy Untrusted