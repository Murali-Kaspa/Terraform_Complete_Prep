
# This Script Will install Terraform in your Amazon Linux Server.
#
# You can download it by using this URL : https://developer.hashicorp.com/terraform/install

sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
