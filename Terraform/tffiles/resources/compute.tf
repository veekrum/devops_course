resource "digitalocean_vpc" "terra-vpc-test" {
  name   = "terra-vpc"
  region = "nyc1"
  ip_range = "10.117.0.0/24"
}

data "digitalocean_vpc" "vpc-manual" {
  name = "manual-test-vpc"
}

resource "digitalocean_droplet" "terraform-test" {
    image = "ubuntu-20-04-x64"
    region = "nyc1"
    size = "s-1vcpu-1gb"
    count = "1"
    name = "${var.droplet_name}-${count.index}"
    ssh_keys = [
      data.digitalocean_ssh_key.terraform.id 
	]
    vpc_uuid = data.digitalocean_vpc.vpc-manual.id
}

resource "digitalocean_firewall" "terra-test" {
  name = "only-22-80-and-443"

  droplet_ids = [digitalocean_droplet.terraform-test[0].id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["192.168.1.0/24", "2002:1:2::/48"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "icmp"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

output vpc-id-nyc {
  value = digitalocean_vpc.terra-vpc-test.id
}
output ipv4_droplet {
  value = digitalocean_droplet.terraform-test[*].ipv4_address
}
