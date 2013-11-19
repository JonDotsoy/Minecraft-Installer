#!/bin/sh


examtermi=$(tty | grep ^/dev/pts/)

if [ -z $1 ]; then
	if [ -z $examtermi ]
		then
		echo "Minecraft Instalación: Se inicia la Instalación"
		sudo $0 comand Terminal
	else
		notify-send "Minecraft Instalación" --icon="minecraft.svg" "Se inicia la Instalación"
		gksudo $0 comand Desktop
	fi
else
	if [ $1 = "comand" ]; then
		#rm file utilidad
		if [ -f /tmp/Minecraft.jar ]
		then
			rm /tmp/Minecraft.jar
		fi
		if [ -f /tmp/minecraft.svg ]
		then
			rm /tmp/minecraft.svg
		fi
		##https://raw.github.com/alfa30/Minecraft-Installer/master/src/minecraft.svg
		if [ -f /usr/share/icons/gnome/scalable/apps/minecraft.svg ]
		then
			rm /usr/share/icons/gnome/scalable/apps/minecraft.svg
		fi
		if [ -d /usr/src/Minecraft/ ]
		then
			rm /usr/src/Minecraft/ -R
		fi
		wget -O /tmp/Minecraft.jar https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
		wget -O /tmp/minecraft.svg https://raw.github.com/alfa30/Minecraft-Installer/master/src/minecraft.svg
		mkdir /usr/src/Minecraft
		mv /tmp/Minecraft.jar /usr/src/Minecraft/ -f
		cp /tmp/minecraft.svg /usr/share/icons/gnome/scalable/apps/minecraft.svg -f

		#Create Launcher /usr/share/applications/Minecraft.desktop 
		echo "[Desktop Entry]" > /usr/share/applications/Minecraft.desktop
		echo "Version=1.0" >> /usr/share/applications/Minecraft.desktop
		echo "Name=Minecraft" >> /usr/share/applications/Minecraft.desktop
		echo "GenericName=Minecraft Client" >> /usr/share/applications/Minecraft.desktop
		echo "Comment=El juego de pixeles" >> /usr/share/applications/Minecraft.desktop
		echo "Keywords=Game;jeugo;java;" >> /usr/share/applications/Minecraft.desktop
		echo "Exec=java -jar /usr/src/Minecraft/Minecraft.jar" >> /usr/share/applications/Minecraft.desktop
		echo "Icon=/usr/share/icons/gnome/scalable/apps/minecraft.svg" >> /usr/share/applications/Minecraft.desktop
		echo "Terminal=false" >> /usr/share/applications/Minecraft.desktop
		echo "Type=Application" >> /usr/share/applications/Minecraft.desktop
		#Cambiar permisos
		chmod 644 /usr/share/applications/Minecraft.desktop
		if [ $2 = "Terminal" ]
			then
			echo "Minecraft Instalación: Minecraft Instalación completa"
		else
			notify-send "Minecraft Instalación" --icon="/usr/share/icons/gnome/scalable/apps/minecraft.svg" "Minecraft Instalación completa"
		fi
	fi
fi
exit