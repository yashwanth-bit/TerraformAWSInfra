resource "aws_instance" "default" {
  count = "${var.environment == "dev" ? 3 : 1}"
  ami           = lookup(var.ami,var.aws_region)
  instance_type = "${var.instance_type.dev}"
  subnet_id = "${element(aws_subnet.subnet1-public.*.id, count.index )}"

  tags = {
    Name = "terraform_server_${count.index+1}"
  }
}