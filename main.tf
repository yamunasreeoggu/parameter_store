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
    {name = "dev.roboshop.frontend.catalogue_url", value = "http://catalogue-dev.yamunadevops.online:80/", type = "String"},
    {name = "dev.roboshop.frontend.cart_url", value = "http://cart-dev.yamunadevops.online:80/", type = "String"},
    {name = "dev.roboshop.frontend.user_url", value = "http://user-dev.yamunadevops.online:80/", type = "String"},
    {name = "dev.roboshop.frontend.shipping_url", value = "http://shipping-dev.yamunadevops.online:80/", type = "String"},
    {name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.yamunadevops.online:80/", type = "String"},
    {name = "dev.roboshop.catalogue.MONGO_URL", value = "mongodb://docdbadmin:RoboShop1234@dev-docdb-cluster.cluster-ci0wnnvfomah.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "String"},
    {name = "dev.roboshop.catalogue.MONGO_ENDPOINT", value = "mongodb-dev.yamunadevops.online", type = "String"},
    {name = "dev.roboshop.user.MONGO_ENDPOINT", value = "mongodb-dev.yamunadevops.online", type = "String"},
    {name = "dev.roboshop.user.MONGO_URL", value = "mongodb://docdbadmin:RoboShop1234@dev-docdb-cluster.cluster-ci0wnnvfomah.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "String"},
    {name = "dev.roboshop.user.REDIS_HOST", value = "dev-elasticache-cluster.jfm15k.0001.use1.cache.amazonaws.com", type = "String"},
    {name = "dev.roboshop.cart.REDIS_HOST", value = "dev-elasticache-cluster.jfm15k.0001.use1.cache.amazonaws.com", type = "String"},
    {name = "dev.roboshop.cart.CATALOGUE_HOST", value = "catalogue-dev.yamunadevops.online", type = "String"},
    {name = "dev.roboshop.cart.CATALOGUE_PORT", value = "80", type = "String"},
    {name = "dev.roboshop.shipping.CART_ENDPOINT", value = "cart-dev.yamunadevops.online:80", type = "String"},
    {name = "dev.roboshop.shipping.DB_HOST", value = "dev-mysql.cluster-ci0wnnvfomah.us-east-1.rds.amazonaws.com", type = "String"},
    {name = "dev.roboshop.shipping.DB_USER", value = "root", type = "String"},
    {name = "dev.roboshop.payment.CART_HOST", value = "cart-dev.yamunadevops.online", type = "String"},
    {name = "dev.roboshop.payment.CART_PORT", value = "80", type = "String"},
    {name = "dev.roboshop.payment.USER_HOST", value = "user-dev.yamunadevops.online", type = "String"},
    {name = "dev.roboshop.payment.USER_PORT", value = "80", type = "String"},
    {name = "dev.roboshop.payment.AMQP_HOST", value = "rabbitmq-dev.yamunadevops.online", type = "String"},
    {name = "dev.roboshop.payment.AMQP_USER", value = "roboshop", type = "String"},
    {name = "dev.roboshop.dispatch.USER", value = "roboshop", type = "String"},
    {name = "dev.roboshop.dispatch.AMQP_HOST", value = "rabbitmq-dev.yamunadevops.online", type = "String"},
    {name = "dev.roboshop.dispatch.AMQP_USER", value = "roboshop", type = "String"},

    # DB Endpoints
    {name = "dev.roboshop.docdb.endpoint", value = "dev-docdb-cluster.cluster-ci0wnnvfomah.us-east-1.docdb.amazonaws.com", type = "String"},
    {name = "dev.roboshop.rds.endpoint", value = "dev-mysql.cluster-ci0wnnvfomah.us-east-1.rds.amazonaws.com", type = "String"},


    # Passwords
    {name = "dev.roboshop.mysql.DB_PASS", value = "RoboShop@1", type = "SecureString"},
    {name = "dev.roboshop.shipping.DB_PASS", value = "RoboShop@1", type = "SecureString"},
    {name = "dev.roboshop.rabbitmq.MQ_PASS", value = "roboshop123", type = "SecureString"},
    {name = "dev.roboshop.payment.AMQP_PASS", value = "roboshop123", type = "SecureString"},
    {name = "dev.roboshop.dispatch.AMQP_PASS", value = "roboshop123", type = "SecureString"},

    # DB's
    {name = "dev.roboshop.rds.master_username", value = "mysqlrdsadmin", type = "String"},
    {name = "dev.roboshop.rds.master_password", value = "RoboShop1234", type = "SecureString"},
    {name = "dev.roboshop.docdb.master_username", value = "docdbadmin", type = "String"},
    {name = "dev.roboshop.docdb.master_password", value = "RoboShop1234", type = "SecureString"},

    ## PROD ENV
    {name = "prod.roboshop.frontend.catalogue_url", value = "http://catalogue-prod.yamunadevops.online:80/", type = "String"},
    {name = "prod.roboshop.frontend.cart_url", value = "http://cart-prod.yamunadevops.online:80/", type = "String"},
    {name = "prod.roboshop.frontend.user_url", value = "http://user-prod.yamunadevops.online:80/", type = "String"},
    {name = "prod.roboshop.frontend.shipping_url", value = "http://shipping-prod.yamunadevops.online:80/", type = "String"},
    {name = "prod.roboshop.frontend.payment_url", value = "http://payment-prod.yamunadevops.online:80/", type = "String"},
    {name = "prod.roboshop.catalogue.MONGO_URL", value = "mongodb://docdbadmin:RoboShop1234@prod-docdb-cluster.cluster-ci0wnnvfomah.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "String"},
    {name = "prod.roboshop.catalogue.MONGO_ENDPOINT", value = "mongodb-prod.yamunadevops.online", type = "String"},
    {name = "prod.roboshop.user.MONGO_ENDPOINT", value = "mongodb-prod.yamunadevops.online", type = "String"},
    {name = "prod.roboshop.user.MONGO_URL", value = "mongodb://docdbadmin:RoboShop1234@prod-docdb-cluster.cluster-ci0wnnvfomah.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "String"},
    {name = "prod.roboshop.user.REDIS_HOST", value = "prod-elasticache-cluster.jfm15k.0001.use1.cache.amazonaws.com", type = "String"},
    {name = "prod.roboshop.cart.REDIS_HOST", value = "prod-elasticache-cluster.jfm15k.0001.use1.cache.amazonaws.com", type = "String"},
    {name = "prod.roboshop.cart.CATALOGUE_HOST", value = "catalogue-prod.yamunadevops.online", type = "String"},
    {name = "prod.roboshop.cart.CATALOGUE_PORT", value = "80", type = "String"},
    {name = "prod.roboshop.shipping.CART_ENDPOINT", value = "cart-prod.yamunadevops.online:80", type = "String"},
    {name = "prod.roboshop.shipping.DB_HOST", value = "prod-mysql.cluster-ci0wnnvfomah.us-east-1.rds.amazonaws.com", type = "String"},
    {name = "prod.roboshop.shipping.DB_USER", value = "root", type = "String"},
    {name = "prod.roboshop.payment.CART_HOST", value = "cart-prod.yamunadevops.online", type = "String"},
    {name = "prod.roboshop.payment.CART_PORT", value = "80", type = "String"},
    {name = "prod.roboshop.payment.USER_HOST", value = "user-prod.yamunadevops.online", type = "String"},
    {name = "prod.roboshop.payment.USER_PORT", value = "80", type = "String"},
    {name = "prod.roboshop.payment.AMQP_HOST", value = "rabbitmq-prod.yamunadevops.online", type = "String"},
    {name = "prod.roboshop.payment.AMQP_USER", value = "roboshop", type = "String"},
    {name = "prod.roboshop.dispatch.USER", value = "roboshop", type = "String"},
    {name = "prod.roboshop.dispatch.AMQP_HOST", value = "rabbitmq-prod.yamunadevops.online", type = "String"},
    {name = "prod.roboshop.dispatch.AMQP_USER", value = "roboshop", type = "String"},

    # DB Endpoints
    {name = "prod.roboshop.docdb.endpoint", value = "prod-docdb-cluster.cluster-ci0wnnvfomah.us-east-1.docdb.amazonaws.com", type = "String"},
    {name = "prod.roboshop.rds.endpoint", value = "prod-mysql.cluster-ci0wnnvfomah.us-east-1.rds.amazonaws.com", type = "String"},


    # Passwords
    {name = "prod.roboshop.mysql.DB_PASS", value = "RoboShop@1", type = "SecureString"},
    {name = "prod.roboshop.shipping.DB_PASS", value = "RoboShop@1", type = "SecureString"},
    {name = "prod.roboshop.rabbitmq.MQ_PASS", value = "roboshop123", type = "SecureString"},
    {name = "prod.roboshop.payment.AMQP_PASS", value = "roboshop123", type = "SecureString"},
    {name = "prod.roboshop.dispatch.AMQP_PASS", value = "roboshop123", type = "SecureString"},

    # DB's
    {name = "prod.roboshop.rds.master_username", value = "mysqlrdsadmin", type = "String"},
    {name = "prod.roboshop.rds.master_password", value = "RoboShop1234", type = "SecureString"},
    {name = "prod.roboshop.docdb.master_username", value = "docdbadmin", type = "String"},
    {name = "prod.roboshop.docdb.master_password", value = "RoboShop1234", type = "SecureString"},

  ]
}


