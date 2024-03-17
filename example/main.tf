module "zero-to-ec2" {

  source = "../"
  ami_id = "ami-0626c3710f2082e41" #rocky linux9.1 
  instance_type = "t2.micro"
  instance_name = "z2ec2-demo"
  key_name = "z2ec2-key" #must already exist in AWS
  volume_size = 12 #in GB
  open_ports = ["22", "80", "443"]
  user_data =   <<-EOF
                #!/bin/bash
                sudo mkdir -p /opt/z2ec2/test
                sudo dnf update -y
                EOF
}

output "z2ec2_vpc_id" {
  value = module.zero-to-ec2.vpc_id
}

output "z2ec2_instance_id" {
  value = module.zero-to-ec2.instance_id
}

output "z2ec2_instance_public_ip" {
  value = module.zero-to-ec2.instance_public_ip
}

output "z2ec2_instance_private_ip" {
  value = module.zero-to-ec2.instance_private_ip
}

