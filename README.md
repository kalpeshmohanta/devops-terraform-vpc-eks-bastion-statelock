# terraform-eks
A sample repository to create EKS on AWS using Terraform.

### Install AWS CLI 

As the first step, you need to install AWS CLI as we will use the AWS CLI (`aws configure`) command to connect Terraform with AWS in the next steps.

Follow the below link to Install AWS CLI.
```
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
```

### Install Terraform

Next, Install Terraform using the below link.
```
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
```

### Install kubectl Tools

With kubectl we can interact aws eks
```
https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-binary-with-curl-on-linux
```

**Prerequisite**
   - Install `kubectl` from [Official Documentation](https://kubernetes.io/docs/tasks/tools/)
   - [Youtube Reference](https://www.youtube.com/watch?v=G9MmLUsBd3g)

**Set Up:**`kubeconfig`
   - `kubeconfig` file contains the connection details and credentials for your Kubernetes cluster. This file is typically located at `~/.kube/config`. 
   - For Window: `%USERPROFILE%\.kube\config`

   - Cloud-based Cluster (EKS):
        - Amazon EKS:
        ```bash
        aws eks update-kubeconfig --region <region> --name <cluster-name>
        ````

### Initialize Terraform

Clone the repository and Run `terraform init`. This will intialize the terraform environment for you and download the modules, providers and other configuration required.

### Optionally review the terraform configuration

Run `terraform plan` to see the configuration it creates when executed.

### Finally, Apply terraform configuation to create EKS cluster with VPC 

`terraform apply`

### Destroy the Resources (Optional- As it Costs Money)

`terraform destroy`
