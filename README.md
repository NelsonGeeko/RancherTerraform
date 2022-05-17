# RancherTerraform

Scripts to create EC2 nodes via the rancher terraform provider.

## SET UP

Remove ".example" from `varibles.tf.example`
please fill this out with your own details.

Best Practices are to bring your own `<filename>.tfvars` file to ensure that any secrets you are using for API calls can not be obtained

The below is an example on how to set up a ".tfvars" file: <br>

`aws_access_key =  <AWS_ACCESS_KEY>` <br>
`aws_secret_key = <AWS_SECRET_KEY>` <br>
`rancher_api_url = <RANCHER_API_URL>` <br>
`rancher_access_key = <RANCHER_API_ACCESS>``rancher_api_url = <RANCHER_API_URL>` <br>
`rancher_secret_key = <RANCHER_API_SECRET>` <br>

Pass this through any `terraform apply` by using `terraform apply -var-file="<filename>.tfvars`

### Roadmap
Planning to add Aditional automation with deploying monitoring, istio, longhorn, ect in future releases.
