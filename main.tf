resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
  overwrite = true
  key_id = "arn:aws:kms:us-east-1:492681564023:key/e0d7eb6d-885f-412f-b2b6-3352d09b052a"
}

variable "parameters" {
  default = [
#    {name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString"},
#    {name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String"},
#    {name = "prod.expense.frontend.backend_url", value = "http://backend-prod.yamunadevops.online/", type = "String"},
#    {name = "prod.rds.endpoint", value = "prod-mysql.cluster-ci0wnnvfomah.us-east-1.rds.amazonaws.com", type = "String"},
#    {name = "prod.backend.app_version", value = "1.0.0", type = "String"},
#    {name = "prod.frontend.app_version", value = "1.0.1", type = "String"},
#
#    # Dev Env
#    {name = "dev.expense.frontend.backend_url", value = "http://backend-dev.yamunadevops.online/", type = "String"},

    # Common env
    {name = "jenkins_password", value = "admin123", type = "SecureString"},
    {name = "artifactory_username", value = "admin", type = "String"},
    {name = "artifactory_password", value = "Admin123", type = "SecureString"},
    {name = "ssh_username", value = "centos", type = "String"},
    {name = "ssh_password", value = "DevOps321", type = "SecureString"},

    # Roboshop Dev Env Parameters
    {name = "dev.roboshop.frontend.catalogue_url", value = "http://catalogue-dev.yamunadevops.online:8080/", type = "String"},
    {name = "dev.roboshop.frontend.cart_url", value = "http://cart-dev.yamunadevops.online:8080/", type = "String"},
    {name = "dev.roboshop.frontend.user_url", value = "http://user-dev.yamunadevops.online:8080/", type = "String"},
    {name = "dev.roboshop.frontend.shipping_url", value = "http://shipping-dev.yamunadevops.online:8080/", type = "String"},
    {name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.yamunadevops.online:8080/", type = "String"},
    {name = "dev.roboshop.catalogue.MONGO_URL", value = "mongodb://mongodb-dev.yamunadevops.online:27017/catalogue", type = "String"},
    {name = "dev.roboshop.catalogue.MONGO_ENDPOINT", value = "mongodb-dev.yamunadevops.online", type = "String"}
  ]
}


