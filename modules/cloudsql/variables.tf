/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#--------#
# Config #
#--------#
variable "network" {
  description = "The VPC where the Forseti client and server will be created"
  default     = "default"
}

variable "network_project" {
  description = "The project containing the VPC and subnetwork where the Forseti client and server will be created"
  default     = ""
}

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
}

variable "suffix" {
  description = "The random suffix to append to all Forseti resources"
}

variable "services" {
  description = "An artificial dependency to bypass #10462"
  type        = list(string)
  default     = []
}

#------------#
# Forseti db #
#------------#
variable "cloudsql_region" {
  description = "CloudSQL region"
  default     = "us-central1"
}

variable "cloudsql_db_name" {
  description = "CloudSQL database name"
  default     = "forseti_security"
}

variable "cloudsql_disk_size" {
  description = "The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased."
  default     = "25"
}

variable "cloudsql_net_write_timeout" {
  description = "See MySQL documentation: https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_net_write_timeout"
  default     = "240"
}

variable "cloudsql_private" {
  description = "Whether to enable private network and not to create public IP for CloudSQL Instance"
  default     = "false"
}

variable "cloudsql_type" {
  description = "CloudSQL Instance size"
  default     = "db-n1-standard-4"
}

variable "cloudsql_user_host" {
  description = "The host the user can connect from. Can be an IP address or IP address range. Changing this forces a new resource to be created."
  default     = "%"
}

variable "cloudsql_db_user" {
  description = "CloudSQL database user"
  default     = "forseti_security_user"
}

variable "cloudsql_db_password" {
  description = "CloudSQL database password"
  default     = ""
}
