module "ec2" {
  # source        = "./module"
  source  = "mandeepmehra/ec2module/aws"
  # source = "git::https://bitbucket.epsilon.com?ref=0.0.1"
  version = "0.0.1" 
  instanceCount = 1
  instanceType  = "t2.micro"
  amiId         = "ami-09e67e426f25ce0d7"
  envType       = "DEV"
}


output "ipaddress" {
  value = module.ec2.ipaddress
}

