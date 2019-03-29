provider "aws" {
  region = "ap-southeast-1"
}

module "db" {
  //https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/1.26.0
  source                              = "terraform-aws-modules/rds/aws"
  version                             = "1.26.0"
  identifier                          = "${var.identifier}"
  engine                              = "${var.engine}"
  engine_version                      = "${var.engine_version}"
  major_engine_version                = "${var.major_engine_version}"
  family                              = "${var.family}"
  instance_class                      = "${var.instance_class}"
  allocated_storage                   = "${var.allocated_storage}"
  storage_encrypted                   = "${var.storage_encrypted}"
  name                                = "${var.identifier}"
  username                            = "${var.username}"
  password                            = "${var.password}"
  port                                = "${var.port}"
  vpc_security_group_ids              = "${var.vpc_security_group_ids}"
  subnet_ids                          = "${var.subnet_ids}"
  maintenance_window                  = "${var.maintenance_window}"
  backup_window                       = "${var.backup_window}"
  backup_retention_period             = "${var.backup_retention_period}"
  publicly_accessible                 = "${var.publicly_accessible}"
  multi_az                            = "${var.multi_az}"
  final_snapshot_identifier           = "${var.final_snapshot_identifier}"
  license_model                       = "${var.license_model}"
  timezone                            = "${var.timezone}"
  deletion_protection                 = "${var.deletion_protection}"
  allow_major_version_upgrade         = "${var.allow_major_version_upgrade}"
  auto_minor_version_upgrade          = "${var.auto_minor_version_upgrade}"
  iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"
  create_db_subnet_group              = "${var.create_db_subnet_group}"
  create_db_parameter_group           = "${var.create_db_parameter_group}"
  create_db_option_group              = "${var.create_db_option_group}"
  tags                                = {
    "tag_environment"                 = "${var.tag_environment}"
    "tag_company"                     = "${var.tag_company}"
    "tag_applevel"                    = "${var.tag_applevel}"
    "tag_apptype"                     = "${var.tag_apptype}"
    "tag_appname"                     = "${var.tag_appname}"
    "tag_function"                    = "${var.tag_function}"
    "tag_adminname1"                  = "${var.tag_adminname1}"
    "tag_adminname2"                  = "${var.tag_adminname2}"
    "tag_dbadminname1"                = "${var.tag_dbadminname1}"
    "tag_dbadminname2"                = "${var.tag_dbadminname2}"
    "tag_ec2startstop"                = "${var.tag_ec2startstop}"
    "tag_ec2backup"                   = "${var.tag_ec2backup}"
    "tag_createdby"                   = "${var.tag_createdby}"
  } 
}