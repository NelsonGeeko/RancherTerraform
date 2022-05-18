# RancherTerraform

Scripts to create an EC2 RKE2 or K3s cluster via the rancher terraform provider.

## SET UP

Remove ".example" from `vars.tfvars.example`
please fill this out with configuration options, and remove # from options you wish to change from their default values.

Best Practices are to bring your own `<filename>.tfvars` file containing your API Secrets this is to ensure that any secrets you are using for API calls can not be obtained, and misused.

The below is an example on how to set up a "secrets.tfvars" file: <br>

`aws_access_key =  <AWS_ACCESS_KEY>` <br>
`aws_secret_key = <AWS_SECRET_KEY>` <br>
`rancher_api_url = <RANCHER_API_URL>` <br>
`rancher_access_key = <RANCHER_API_ACCESS>`<br>
`rancher_secret_key = <RANCHER_API_SECRET>` <br>

_(a `secrets.tfvars.example` file has been provided)_

Pass this through any `terraform <apply/plan/destroy>` by using `terraform <apply/plan/destroy> -var-file=<(cat secret.tfvars vars.tfvars)`.

## UPDATES
Optional monitoring is now enabled, please use the `monitoring = true` varible in the `vars.tfvars` file to enable. <br> <br>
If you deploy monitoring by accident, this can be rectified by setting `monitoring = false` and performing `terraform apply`, this will uninstall the monitoring stack on the cluster.

#### Roadmap
Planning to add Aditional automation with deploying istio, longhorn, ect in future releases.
