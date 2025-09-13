1. Provision aks, key vault, (entra id) serviceprinciple ,with contributor role using tf and azure devops
2. Basically when the devops commits the code, the build pipeline will be triggered (which has code analysis, code verification, unit and integration testing ) to provision the azure  env via terraform as IAC
3. When you merge code to the feature branch and then its merged to the main branch, the DEV deployment is triggered. Env is provision with AKS for dev cluster, key vault for dev cluster and sp for dev cluster. It use seperate state file (DEV)
4. For stage you have seperate tf state file which resides in seperate storage account
5. we have to keep the TF state file seperate from the ENVIRONMENT. less chances of deletion and modification of TF State file.
6. Once the DEV env is successful then the stage environment is triggered   as a part of next step.
7. Seperate pipeline to destroy the resources as well. Example once the pre prod env testing is provisioned , you need to destry the environment.Need seperate DESTRUCTION pipeline provide the params of wch environment to be distryed with runtime and itll be destroyed.

