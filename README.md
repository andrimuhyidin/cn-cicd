# Cloud Native CICD Framework
Cloud Native CICD Framework use Tekton as CI and Flux as CD
## Prerequisites
- Client Tools: Git, Helm v3, Flux CLI
- Git Repository and Personal Access Token
## Install Flux CD
1. Export your PAC
```bash
export GITHUB_TOKEN=<personal-access-token>
```

2. Install with Flux CLI Bootstrap
```bash
flux bootstrap github \
  --owner=andrimuhyidin \
  --repository=cn-cicd \
  --branch=master \
  --path=flux/clusters/minikube \
  --personal
```



