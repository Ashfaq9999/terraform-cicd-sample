provider "aws"{
region="ap-south-1"
}

resources "aws_instance" "ec2" {
ami="ami-id"
instance_type= "t2.micro"
key_name= "keypair"

}
