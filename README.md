# Supertheme Polybar
Personal theme for polybar

## Contenido
- [Dependencias](#dependencias)
  - [Polybar](#polybar)
  - [Nerd Fonts](#nerd-fonts)
- [Aplicar tema](#aplicar-tema)
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

El tema utiliza las [Nerd Fonts](https://www.nerdfonts.com/#home) para la utilizacion de iconos, especificamente se usa Hack Nerd Font y se recomienda usar esa si no se quiere tener que modificar el archivo de configuracion del tema.

Puedes descargar Hack Nerd Font accediendo al sitio oficial de [Nerd Fonts](https://www.nerdfonts.com/#home) y buscando Hack Nerd Font, o bien usando el siguiente link:

* Hack Nerd Font: [https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip)

[Github de Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/)

## Aplicar tema

#### Nota:
Si ya tiene algun archivo de configuracion en `~/.config/polybar/config.ini` y no quiere perderlo asegurese de hacer un respaldo antes.

## Descarga

Primero debera obtener el tema. Acceda a una carpeta de destino, por ejemplo ```cd Downloads``` y despues puede clonar el repositorio:

```bash
git clone https://github.com/axdevil/supertheme-polybar.git
```

Si no tiene Git instalado, descarguelo desde los repositorios oficiales de su distribucion, por ejemplo, Arch Linux: ```sudo pacman -S git```

Se creo un script que automatiza los movimientos de los archivos de configuracion, solamente debe ejecutarlo y el tema sera copiado al directorio por defecto de polybar, lo puede hacer de la siguiente forma:

Primero acceda a la carpeta del repositorio:

```bash
cd supertheme-polybar
```

Y ejecute ```install.sh```:

```bash
bash install.sh
```

En estos momentos deberia ver el tema aplicado y funcionando.
