
![Logo](https://upload.wikimedia.org/wikipedia/commons/0/04/Terraform_Logo.svg)


# Projeto EC2

Este projeto, tem como príncipio o provisionamento de infraestrutura e criação de máquinas EC2.

O mesmo salva o state do terraform no bucket da AWS onde será feito o deploy.
Esse bucket deve estar previamente criado.

## Deploy

Para fazer o deploy desse projeto:

```bash
  terraform apply --var-files=env.tfvars
```

## Stack utilizada

**Ferramentas:** Terraform

**AWS Cloud:** EC2, EBS e Security Group
