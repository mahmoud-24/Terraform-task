resource "aws_instance" "web1" {
    ami = data.aws_ami.amazon_linux
    instance_type = var.instance_type
    subnet_id = aws_subnet.subnet.id[0]
    vpc_security_group_ids = [aws_security_group.http-allowed.id]
    tags = {
    Name        = "web1"
   
  }
    user_data = <<-EOF
    #!/bin/bash
    echo "*** Installing apache2"
    sudo apt update -y
    sudo apt install apache2 -y
    echo "*** Completed Installing apache2"
    EOF

    
}
