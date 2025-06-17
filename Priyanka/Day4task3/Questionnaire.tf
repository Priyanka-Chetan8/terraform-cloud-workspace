Question 1: Based on the following Terraform configuration, what is the local name associated with the resource that is defined?
resource "aws_instance" "lab_ec2_1" {
  ami           = "ami-02457590d33d576c3"
  instance_type = "t2.micro"

  tags = {
    Name = "Server1"
  }
}


ANSWER:  lab_ec2_1



Question 2: Based on the following Terraform code, what might be the provider that would had been used? 

resource "aws_instance" "myec2" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
}


ANSWER: AWS


Question 3: A running EC2 instance in AWS environment represents which state in Terraform? Current or Desired?


ANSWER: Current


Question 4: What is the full name of the file were Terraform stores state information?


ANSWER: terraform.tfstate


Question 5: Matthew has created an EC2 instance via Terraform. Matthew has defined the following rules within the security group:

Port 443 allowed from 0.0.0.0/0
Port 22 allowed from 125.36.50.23/32
John has added the following rule manually:

Port 80 allowed from 0.0.0.0/0

Next time when Matthew runs a terraform plan, what will happen?

ANSWER: When Matthew runs Terraform plan, terraform will compare the current state defined in the code against the real infrastructure state in the AWS, where it includes the port added by John. Since port 80 isn't declared in the terraform code and when terraform plan is run, it plans to remove that rule and brings things back in sync.

Question 6: There are 3 resources that have been created using Terraform.
1 resource among them has been deleted manually from the AWS console.
What will happen in the next terraform apply operation?

ANSWER: In the next Terraform apply, the resource gets added again since that is present in the terraform's state file