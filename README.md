# Supertheme Polybar
Personal theme for polybar

[SuperTheme!!!!](https://raw.githubusercontent.com/axdevil/supertheme-polybar/main/assets/supertheme.png)

## Contenido
- [Dependencias](#dependencias)
  - [Polybar](#polybar)
  - [Nerd Fonts](#nerd-fonts)
  - [MPD (Opcional)](#mpd)
- [Aplicar tema](#aplicar-tema)
- [Iniciar con el sistema](#iniciar-con-el-sistema)
## Dependencias

### Polybar

Es necesaria tener la polybar instalada, la puedes instalar de la siguiente forma:

#### Arch Linux
```bash
sudo pacman -S polybar
```
#### Ubuntu y Debian
```bash
sudo apt install polybar
```
#### Fedora
```bash
sudo dnf install polybar
```
[Wiki de la Polybar](https://github.com/polybar/polybar/wiki)

### Nerd Fonts

El tema utiliza las [Nerd Fonts](https://www.nerdfonts.com/#home) para la utilizacion de iconos, especificamente se usa Hack Nerd Font. Si desea usar otra fuente puede cambiarlos en el archivo de configuracion ```config.ini```

Puedes descargar Hack Nerd Font accediendo al sitio oficial de [Nerd Fonts](https://www.nerdfonts.com/#home) y buscando Hack Nerd Font, o bien usando el siguiente link:

* Hack Nerd Font: [https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip)

Puedes instalarlas usando alguna aplicacion como [Fonts](https://apps.gnome.org/es/app/org.gnome.font-viewer/) de Gnome o de forma manual moviendo el directorio donde se encuentren las fuentes a `/usr/share/fonts`

[Github de Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/)

### MPD

Para que el modulo central de musica funcione se necesita de [MPD](https://www.musicpd.org/) funcionando y corriendo en el sistema, lo puede instalar de la siguiente manera:

#### Arch Linux

```bash
sudo pacman -S mpd libmpdclient
```

#### Ubuntu

```bash
sudo apt-get install mpd libmpdclient
```

Para configurar MPD puedes consultar la wiki de Arch Linux: [https://wiki.archlinux.org/title/Music_Player_Daemon](https://wiki.archlinux.org/title/Music_Player_Daemon)

Para gestionar la musica necesitaras de un cliente, se muestran muchos ejemplos tanto graficos como de terminal en la misma wiki de Arch Linux: [https://wiki.archlinux.org/title/Music_Player_Daemon#Clients](https://wiki.archlinux.org/title/Music_Player_Daemon#Clients)

###### Nota:

Si deseas quitar el modulo de musica por cualquier razon accede al archivo config.ini con tu editor de texto preferido, ejemplo ```nano .config/polybar/config.ini``` y comenta la propiedad con ";" ```modules-center```, te deberia quedar asi ```; modules-center = CI mpd CD```.

## Aplicar tema

### Importante:
Si ya tiene algun archivo de configuracion en `~/.config/polybar/` y no quiere perderlo asegurese de hacer un respaldo antes.

### Descarga

Primero debera obtener el tema. Acceda a una carpeta de destino, por ejemplo ```cd Downloads``` y despues puede clonar el repositorio:

```bash
git clone https://github.com/axdevil/supertheme-polybar.git
```

Si no tiene Git instalado, descarguelo desde los repositorios oficiales de su distribucion, por ejemplo, Arch Linux: ```sudo pacman -S git```

Se creo un script que automatiza los movimientos de los archivos de configuracion, solamente debe ejecutarlo y el tema sera copiado, ademas de que se ejecutara o reiniciara Polybar, lo puede hacer de la siguiente forma:

Primero acceda a la carpeta del repositorio:

```bash
cd supertheme-polybar
```

Y ejecute ```install.sh```:

```bash
bash install.sh
```

De igual forma puede moverlos de forma manual, necesitara mover los archivos `config.ini`, `modules.ini`,`decoration.ini`,`colors.ini` y `launch.sh` a la carpeta `~/.config/polybar/` y reiniciar o ejecutar su polybar.

En estos momentos deberia ver el tema aplicado y funcionando.

## Iniciar con el sistema

Si aun no lo tiene hecho y desea que Polybar se ejecute al inicio del sistema:

Si usa BSPWM agrege lo siguiente en su `bspwmrc`:

```bash
bash .config/polybar/launch.sh
```

Si usa I3WM agregue lo siguiente a su configuracion:

```bash
exec_always --no-startup-id bash .config/polybar/launch.sh
```

Si no usa ninguno de estos tambien podria agregar la siguiente linea al archivo `.xprofile` que se encuentra en su `$HOME/`

```bash
exec bash .config/polybar/launch.sh
```
