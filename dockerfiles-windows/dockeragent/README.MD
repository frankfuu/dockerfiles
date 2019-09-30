### Windows docker based Azure Devops Pipeline agent with .NET Framework
You can set up an Azure Pipelines self-hosted agent to run inside a Windows Server Core (for Windows hosts), or Ubuntu container (for Linux hosts) with Docker. This is useful when you want to run agents with some kind of outer orchestration, such as Azure Container Instances. We'll walk through a complete container example, including handling agent self-update.

I've also installed the following

- Chocolatey
- NodeJS
- yarn

https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#windows

```
docker build -t dockeragent:latest .

docker run -e AZP_URL=https://<company>.visualstudio.com -e AZP_TOKEN=<token> -e AZP_AGENT_NAME=mydockeragent1 -e AZP_POOL=bld-dkr-win-pool dockeragent:latest
```