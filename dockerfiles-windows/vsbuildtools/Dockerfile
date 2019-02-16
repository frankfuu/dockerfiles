FROM microsoft/dotnet-framework:4.7.2-sdk-windowsservercore-ltsc2019

ENV chocolateyUseWindowsCompression false

RUN ping chocolatey.org
# RUN powershell -Command \
#     iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')); \
#     choco feature disable --name showDownloadProgress

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

