terraform {
    required_providers {
        contabo = {
            source = "contabo/contabo"
            version = "0.1.26"
        }
    }
}

provider "contabo" {
    oauth2_client_id = var.contabo_client_id
    oauth2_client_secret = var.contabo_client_secret
    oauth2_user = var.contabo_user_name
    oauth2_pass = var.contabo_password
}

resource "contabo_private_network" "lab_net" {
    name = "lab-net"
    description = "private network for lab net"
    region = "EU"
      instance_ids = [
        202993787,
        203162409
    ]
}

resource "contabo_instance" "gateway" {
    display_name = "gateway"
    product_id = "V92"
    image_id = "d64d5c6c-9dda-4e38-8174-0ee282474d8a"
    region = "EU"
}

resource "contabo_instance" "private_server" {
    display_name = "private_server"
    product_id = "V92"
    image_id = "d64d5c6c-9dda-4e38-8174-0ee282474d8a"
    region = "EU"
}