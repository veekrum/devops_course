resource "digitalocean_droplet" "terraform-test" {
    image = "ubuntu-20-04-x64"
    name = var.droplet_name
    region = "nyc1"
    size = "s-1vcpu-1gb"
    ssh_keys = [
      data.digitalocean_ssh_key.terraform.id 
	]
    count = "1"

}
