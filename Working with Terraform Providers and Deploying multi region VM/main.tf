# Define AWS provider configuration for us-east-1 region
provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"  # Alias for this provider configuration
}

# Define AWS provider configuration for us-west-2 region
provider "aws" {
  region = "us-west-2"
  alias  = "us-west-2"  # Alias for this provider configuration
}

# Define AWS instance resource in us-east-1 region
resource "aws_instance" "Vm_in_East" {
  ami           = "ami-053b0d53c279acc90"
  subnet_id     = ""  # Specify the subnet ID where this instance will belong
  instance_type = "t3.micro"
  tags = {
    Name = "Machine in East"
  }
  provider = aws.us-east-1  # Use the us-east-1 provider configuration
}

# Define another AWS instance resource in us-west-2 region
resource "aws_instance" "VM_in_west" {
  ami           = "ami-03f65b8614a860c29"
  subnet_id     = ""  # Specify the subnet ID where this instance will belong
  instance_type = "t2.micro"
  tags = {
    Name = "Machine in us west"
  }
  provider = aws.us-west-2  # Use the us-west-2 provider configuration
}
