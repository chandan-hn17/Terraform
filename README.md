# Commonly Used Terraform Commands

| **Command**                          | **Description**                                                                 |
|-------------------------------------|---------------------------------------------------------------------------------|
| `terraform init`                    | Initializes backend, downloads provider plugins                                |
| `terraform plan`                    | Shows the changes Terraform will make                                          |
| `terraform apply`                   | Applies the planned changes                                                    |
| `terraform destroy`                 | Destroys all Terraform-managed infrastructure                                  |
| `terraform validate`               | Validates the Terraform configuration files                                    |
| `terraform fmt`                     | Formats code to canonical Terraform style                                      |
| `terraform show`                    | Displays the Terraform state or a saved plan                                   |
| `terraform output`                  | Displays outputs from state file                                               |
| `terraform taint`                   | Marks a resource for recreation                                                |
| `terraform untaint`                 | Removes taint from a resource                                                  |
| `terraform import`                  | Brings existing infrastructure into Terraform state                            |
| `terraform state list`              | Lists resources in the state file                                              |
| `terraform state show`              | Shows attributes of a resource in state                                        |
| `terraform state rm`                | Removes a resource from the state file                                         |
| `terraform refresh`                 | Updates state file with real infrastructure data                               |
| `terraform workspace list`          | Lists all workspaces                                                           |
| `terraform workspace new`           | Creates a new workspace                                                        |
| `terraform workspace select`        | Switches to a specific workspace                                               |
| `terraform console`                 | Interactive shell to evaluate Terraform expressions                            |
| `terraform providers`               | Shows providers required and used in the project                               |

---

# Terraform Commands by Topic

| **Topic**                 | **Command**                                 | **Description**                                                                 |
|--------------------------|----------------------------------------------|---------------------------------------------------------------------------------|
| **Initialization**       | `terraform init`                             | Initializes backend and provider plugins                                       |
|                          | `terraform init -upgrade`                    | Upgrades modules and plugins to latest acceptable versions                     |
| **Planning & Applying**  | `terraform plan`                             | Generates and shows the execution plan                                         |
|                          | `terraform apply`                            | Applies the planned changes                                                    |
|                          | `terraform apply -target=resource`           | Applies only specific targeted resources                                       |
|                          | `terraform apply -auto-approve`              | Skips approval prompt during apply                                             |
| **Destruction**          | `terraform destroy`                          | Destroys infrastructure managed by Terraform                                   |
|                          | `terraform destroy -target=resource`         | Destroys only specified resource(s)                                            |
| **State Management**     | `terraform state list`                       | Lists all resources in current state                                           |
|                          | `terraform state show <resource>`            | Shows attributes of a resource in state                                        |
|                          | `terraform state rm <resource>`              | Removes resource from Terraform state                                          |
|                          | `terraform refresh`                          | Refreshes state with real-time cloud resource values                           |
| **Importing Resources**  | `terraform import <addr> <resource_id>`      | Imports an existing resource into Terraform state                              |
| **Output Handling**      | `terraform output`                           | Displays outputs from state                                                    |
|                          | `terraform output -json`                     | Outputs in JSON format                                                         |
| **Variables**            | `terraform plan -var='key=value'`            | Injects variables directly from CLI                                            |
|                          | `terraform apply -var-file="values.tfvars"`  | Uses variables from specified file                                             |
| **Formatting & Linting** | `terraform fmt`                              | Formats Terraform code                                                         |
|                          | `terraform validate`                         | Validates code syntax and configuration                                        |
| **Workspaces**           | `terraform workspace list`                   | Lists all Terraform workspaces                                                 |
|                          | `terraform workspace new <name>`             | Creates a new workspace                                                        |
|                          | `terraform workspace select <name>`          | Switches to a different workspace                                              |
|                          | `terraform workspace delete <name>`          | Deletes a workspace                                                            |
| **Console & Debugging**  | `terraform console`                          | Opens an interactive expression shell                                          |
|                          | `terraform show plan.tfplan`                 | Shows a saved plan file                                                        |
|                          | `terraform plan -out=plan.tfplan`            | Saves the execution plan to a file                                             |
|                          | `TF_LOG=DEBUG terraform apply`              | Enables detailed logs for troubleshooting                                     |
| **Targeting**            | `terraform apply -target=module.name`        | Applies changes only to specific modules/resources                             |
|                          | `terraform destroy -target=module.name`      | Destroys only specific modules/resources                                       |
| **Modules & Providers**  | `terraform get`                              | Downloads modules referenced in config                                         |
|                          | `terraform providers`                        | Shows providers in use                                                         |
|                          | `terraform providers lock`                   | Creates or updates the provider lock file (in newer versions)                  |