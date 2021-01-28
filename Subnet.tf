resource "aws_subnet" "subnet1-public" {
    count = length(var.cidrs)
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "${element(var.cidrs,count.index )}"
    availability_zone = "${element(var.avialabilty_zones,count.index )}"

    tags = {
        Name = "${var.vpc_name}-Subnet-${count.index+1}"
    }
}

