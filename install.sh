#!/bin/bash

dir="$(dirname "${BASH_SOURCE[0]}")"

echo "Copiando archivos de configuracion a: " $dir

cp $dir/"launch.sh" $dir/"config.ini" $dir/"modules.ini" $dir/"colors.ini" $dir/"decoration.ini" ~/.config/polybar/

echo "Archivos copiados, reiniciando Polybar..."

exec $dir/launch.sh
