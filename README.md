# vitaliymikhailoff_infra
vitaliymikhailoff Infra repository

## Знакомство с Yandex Cloud.

### Основное задание:
Конфигурация cloud-bastion.ovpn позволяет подключаться до созданных в облаке Yandex Cloud виртуальных машин, маршрут настроен только на подсеть 10.128.0.0/24.
bastion_IP = 51.250.65.60
someinternalhost_IP = 10.128.0.17

### Самостоятельное задание:
Для подключения к хосту someinternalhost одной командой, необходимо создать следующий alias:
alias someinternalhost='ssh -i .ssh/yc_key -A appuser@51.250.65.60 "ssh -tt 10.128.0.17"'
После добавления alias можно подключаться одной командой - someinternalhost

### Дополнительное задание:
Настроен Let's Encrypt сертификат для доступа к web панели pritunl.
URL: https://vpn.mikhailov.cf
