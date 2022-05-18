# RancherTerraform

Scripts to create EC2 nodes via the rancher terraform provider.

## SET UP

Remove ".example" from `vars.tfvars.example`
please fill this out with your own details.

Best Practices are to bring your own `<filename>.tfvars` file to ensure that any secrets you are using for API calls can not be obtained.

The below is an example on how to set up a ".tfvars" file: <br>

`aws_access_key =  <AWS_ACCESS_KEY>` <br>
`aws_secret_key = <AWS_SECRET_KEY>` <br>
`rancher_api_url = <RANCHER_API_URL>` <br>
`rancher_access_key = <RANCHER_API_ACCESS>``rancher_api_url = <RANCHER_API_URL>` <br>
`rancher_secret_key = <RANCHER_API_SECRET>` <br>

Pass this through any `terraform apply` by using `terraform apply -var-file="<filename>.tfvars`.

## UPDATES
Optional monitoring is now enabled, please use the `monitoring = true` varible in the `vars.tfvars` file to enable. <br> <br>
If you deploy monitoring by accident, this can be rectified by setting `monitoring = false` and performing `terraform apply`, this will uninstall the monitoring stack on the cluster.

#### Roadmap
Planning to add Aditional automation with deploying istio, longhorn, ect in future releases.
