Minecraft Installer
===================

Instala Minecraft en tu Linux de la forma mas fácil posible. Un archivo shell que permite instalar correctamente Minecraft para linux

Requisitos:
 - libnotify-bin
 - openjdk-7-jdk
 - wget/curl

Instalación
-----------

### Usando cURL

```sh
curl https://raw.githubusercontent.com/alfa30/Minecraft-Installer/master/INSTALL.sh -sS | sh
```

### Manual

1) Descargar el archivo "[INSTALL.sh](https://raw.github.com/alfa30/Minecraft-Installer/master/INSTALL.sh)".
```
wget https://raw.github.com/alfa30/Minecraft-Installer/master/INSTALL.sh
```
2) Abrir terminal y escribir
```
chmod +x ./INSTALL.sh && ./INSTALL.sh
```
3) Esperar asta que termine la instalación.

Instalación mediante paquete DEBIAN
-----------------------------------

1) Descargar el paquete "[INSTALL.deb](https://github.com/alfa30/Minecraft-Installer/blob/master/INSTALL.deb?raw=true)"

2) Instalarlo mediante "Centro de software Ubuntu" o "Instalador de paquetes GDebi"

### Alternativa terminal:

2) Abriendo un terminal se escribe lo siguiente
```
sudo dpkg -i INSTALL.deb
```


