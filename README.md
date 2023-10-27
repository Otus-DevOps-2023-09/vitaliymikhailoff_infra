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


## Основные сервисы Yandex Cloud

### Основное задание:
testapp_IP = 51.250.93.11  
testapp_port = 9292  

### Дополнительное задание:
Написал startup config - yc-config.txt
Команда CLI для развертки ВМ с применением конфига:

yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=yc-config.txt

В результате получаем ВМ с развернутым приложением.
