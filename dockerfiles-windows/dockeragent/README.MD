https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#windows


docker run -e AZP_URL=https://<COMPANY_NAME>.visualstudio.com -e AZP_TOKEN=<INSERT_PAT> -e AZP_AGENT_NAME=mydockeragent1 -e AZP_POOL=dkr-syd-pool dockeragent:latest