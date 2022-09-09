variable "machine_type" {
  type        = string
  default     = "f1-micro"
  description = "Compute engine machine instance"
}

variable "project_name" {
  type        = string
  default     = "kpmg-challange"

}

variable "project_id" {
  type        = string
  default     = "kpmg-challange-project"

}

variable "region" {
  type        = string
  default     = "europe-west3"

}


variable "zone" {
  type        = string
  default     = "europe-west3-c"
 
}


variable "data_base_version" {
  type        = string
  default     = "MYSQL_5_6" 
  description = "specifies the database version"
}


variable "db_password" {
  type        = string
  default     = "password"
  description = "description"
}

variable "db_username" {
  type        = string
  default     = "user1"
  description = "input the database authorized user "
}

variable "db_host" {
  type        = string
  default     = "%"
  description = "description"
  
}

variable "db_name" {
  type        = string
  default     = "kpmg-challange"
  description = "description"
}

variable "vpc_subnetip_range" {
  type        = string
  default     = "10.0.0.0/24"
  description = "CIDR range of the VPC being created"
}

variable "vpc_subnet_name" {
  type        = string
  default     = "challange1"
  description = "name of the vpc subnet being created"
}

variable "vpc_name" {
  type        = string
  default     = "vpc-network-kpmg"
}

variable "lb_name" {
  type        = string
  default     = "load-balancer-kpmg"
  description = "description"
}

variable "dbinstance_name" {
  type        = string
  default     = "kp-challange"
  description = "name of database instance"
}


variable "authorized_networks" {
  type        = string
  default     = "0.0.0.0/0"
  description = "authorized networks ip incoming to the database"
}
