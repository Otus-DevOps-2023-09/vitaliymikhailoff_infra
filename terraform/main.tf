terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = "***"
  cloud_id  = "b1gisvkmoid7t0k2945i"
  folder_id = "b1grg25ep10glj3dtadn"
  zone      = "ru-central1-a"
}

resource "yandex_compute_instance" "app" {
  name = "reddit-app"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8u6rke79pf9rbi15e9"
    }
  }

  network_interface {
    subnet_id = "e9bn8d1cek0bar3nhk4l"
    nat       = true
  }

  metadata = {
  ssh-keys = "ubuntu:${file("~/.ssh/appuser.pub")}"
  }
}