# Project
It's like modules to provide any CICD Stack, we can develop the task, taskRun, pipeline, pipelineRun here as a template.
## Application
Use for generate the task and pipeline run. Because the "runs" refer to active jobs. So we separate from the template task and pipeline in modules.
### How to use this template
1. You need to copy the values.yaml and locate to folder apps (create your own folder)
2. Customize your values and run.sh
3. Apply the run.sh command and done. Your pipeline will be run automatically.
## Modules
Use for generate independent modules, passive jobs. So we can develop any modules here as a template that consume the application.
### How to use this template
Install modules first before you use our cicd framework.
```bash
$./projects/modules/install.sh
```

# Apps
Use for provisiong the cicd for each apps or services. You need the values.yaml and run.sh. You can add the applications here with define your own folder.