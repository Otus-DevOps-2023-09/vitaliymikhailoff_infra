variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "private_key_path" {
  description = "Path to the private key used for ssh access"
}
variable "count_vm" {
  description = "Count VM created"
  default = "1"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default = "reddit-base-app"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "service_account_key_file" {
  description = "key .json"
}
variable "environment_space" {
  description = "Environment space (stage, prod)"
}
variable "mongo_ip" {
  description = "MongoDB ip address"
}
