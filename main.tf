provider "aws"{
region="ap-south-1"
}

resources "aws_instance" "ec2" {
ami="ami-0ddfba243cbee3768"
instance_type= "t2.micro"
key_name= "keypair"

}
