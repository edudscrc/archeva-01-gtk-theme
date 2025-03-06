#! /bin/bash

cd ./Adwaita
./parse-sass.sh
mkdir -p ~/.themes/ArchEVA-01/gtk-3.0
cp ./gtk-contained-dark.css ~/.themes/ArchEVA-01/gtk-3.0/gtk.css
cp -r ./assets ~/.themes/ArchEVA-01/gtk-3.0/assets
