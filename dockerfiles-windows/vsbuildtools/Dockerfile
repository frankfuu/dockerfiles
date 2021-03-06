# escape=`

ARG LTSC_VERSION=ltsc2019

FROM microsoft/dotnet-framework:4.7.2-sdk-windowsservercore-${LTSC_VERSION}

# ENV chocolateyUseWindowsCompression false
COPY installchoco.ps1 / 

WORKDIR /
RUN powershell .\installchoco.ps1
RUN choco feature enable -n allowGlobalConfirmation
RUN choco install nodejs-lts
RUN choco install yarn
RUN choco install netfx-4.7.1-devpack

# References
# Install VS Build Tools using Container - https://docs.microsoft.com/en-us/visualstudio/install/build-tools-container?view=vs-2017
# Command line arguments - https://docs.microsoft.com/en-us/visualstudio/install/use-command-line-parameters-to-install-visual-studio?view=vs-2017

# BEGIN INSTALL VSBUILDTOOLS
# Restore the default Windows shell for correct batch processing below.
SHELL ["cmd", "/S", "/C"]

# Download the Build Tools bootstrapper.
ADD https://aka.ms/vs/15/release/vs_buildtools.exe C:\TEMP\vs_buildtools.exe

# Install Build Tools excluding workloads and components with known issues.
RUN C:\TEMP\vs_buildtools.exe --quiet --wait --norestart --nocache `    
    --add Microsoft.VisualStudio.Component.Static.Analysis.Tools `
    --remove Microsoft.VisualStudio.Component.Windows10SDK.10240 `
    --remove Microsoft.VisualStudio.Component.Windows10SDK.10586 `
    --remove Microsoft.VisualStudio.Component.Windows10SDK.14393 `
    --remove Microsoft.VisualStudio.Component.Windows81SDK `
 || IF "%ERRORLEVEL%"=="3010" EXIT 0

# Default to PowerShell if no other command specified.
CMD ["powershell.exe", "-NoLogo", "-ExecutionPolicy", "Bypass"]


# RUN .\printstuff.ps1
# ENV chocolateyUseWindowsCompression false

# RUN ping chocolatey.org
# RUN powershell -Command iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# RUN @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# RUN choco feature enable -n allowGlobalConfirmation
# RUN choco install nodejs-lts
# RUN choco install yarn

# REFERENCES
# https://docs.microsoft.com/en-us/visualstudio/install/build-tools-container?view=vs-2017
# https://docs.microsoft.com/en-us/visualstudio/install/build-tools-container-issues?view=vs-2017
# # https://github.com/Microsoft/dotnet-framework-docker
# 4.7.2-sdk-20190212-windowsservercore-ltsc2019, 4.7.2-sdk-windowsservercore-ltsc2019, 4.7.2-sdk, sd
# 4.7.2-sdk-20190212-windowsservercore-1803, 4.7.2-sdk-windowsservercore-1803, 4.7.2-sdk, sdk (Dockerfile)
# 4.7.2-sdk-20190212-windowsservercore-1709, 4.7.2-sdk-windowsservercore-1709, 4.7.2-sdk, sdkdocker pull microsoft/dotnet-framework
#  docker pull microsoft/dotnet-framework:4.7.2-sdk-windowsservercore-ltsc2019
# https://devops.stackexchange.com/questions/2155/cannot-connect-to-chocolatey-org-or-any-other-internet-site-from-within-containe
# https://www.google.com/search?q=cannot+resolve+chocolatey+windows+container&rlz=1C1CHBF_en-GBAU827AU827&oq=cannot+resolve+chocolatey+windows+container&aqs=chrome..69i57.4578j0j7&sourceid=chrome&ie=UTF-8
# https://docs.microsoft.com/en-us/dotnet/standard/containerized-lifecycle-architecture/design-develop-containerized-apps/set-up-windows-containers-with-powershell
# https://stackoverflow.com/questions/51517280/running-chocolatey-in-docker-container-fails
# https://forums.docker.com/t/cannot-ping-the-outside-world/61264/4
# https://github.com/docker/for-win/issues/2760
