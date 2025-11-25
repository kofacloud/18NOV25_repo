resource "aws_launch_template" "web_tier" {
  name = "web_app_template"
  description = "launch template for the web tier's app"
  image_id = "ami-02b297871a94f4b42"
  instance_type = "t3.micro"
  # key_name = 
  vpc_security_group_ids = [aws_security_group.clyde_web_server.id]
  user_data = filebase64("user_data.sh")

  tag_specifications {
    resource_type = "instance"
    tags = {
      ManagedBy = "terraform"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}




# name
# descirption
# ami_image-id
# instance type
# key
# vpc (don't need)
# subnet (don't need)
# SG
# public IP true/false
# user data


























# resource "aws_instance" "clyde_web_tier" {
#   ami           = "ami-04ca38f0293e74e57" # ap-northeast-1
#   instance_type = "t3.micro"
#   security_groups = [aws_security_group.shinobi_sg.id]
#   subnet_id = aws_subnet.public-ap-northeast-1a.id
#   associate_public_ip_address = true


# user_data = file("user_data.sh")

#   tags = {
#     Name = "clyde web-server"
    #   Tier = "web" 
#   }
# }