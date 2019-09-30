# escape=`

FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019

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

WORKDIR /azp

COPY start.ps1 .

CMD powershell .\start.ps1