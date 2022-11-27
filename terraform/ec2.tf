#  module "project_ec2" {
#    source             = "./modules/ec2"
#    name               = local.name
#    account            = data.aws_caller_identity.current.account_id
#    aws_ami            = data.aws_ami.amazon_linux_2.id
#    private_subnet_ids = module.vpc.private_subnet_ids
#    vpc_id             = module.vpc.vpc_id
#  }

  module "project_ec2" {
   source             = "./modules/ec2"
   name               = local.name
   account            = data.aws_caller_identity.current.account_id
   aws_ami            = "ami-0774c9963eee5c93f"
   private_subnet_ids = module.vpc.private_subnet_ids
   vpc_id             = module.vpc.vpc_id
 }

# us-east-1 ami id "ami-083083b4bf81d4414"
# us-east-2 ami id "ami-0774c9963eee5c93f"