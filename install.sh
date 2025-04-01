#! /bin/bash

cd ./Adwaita
./parse-sass.sh
mkdir -p ~/.themes/ArchEVA-01/gtk-3.0
cat <<EOL >> "./gtk-contained-dark.css"

box > scrolledwindow .view,
box > scrolledwindow .view:backdrop {
  background-color: #1A1525;
}

box > scrolledwindow > treeview .view:selected:focus,
box > scrolledwindow > treeview .view:selected { 
  background-color: #A3FF00; 
  color: #1A1525;
}

toolitem>widget>box>entry, 
toolitem>widget>box>entry:backdrop {
  background-color: #1A1525;
}

.view:selected {
  color: #1A1525;
}

EOL
cp ./gtk-contained-dark.css ~/.themes/ArchEVA-01/gtk-3.0/gtk.css
cp -r ./assets ~/.themes/ArchEVA-01/gtk-3.0/assets
