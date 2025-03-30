#! /bin/bash

cd ./Adwaita
./parse-sass.sh
mkdir -p ~/.themes/ArchEVA-01/gtk-3.0
cat <<EOL >> "./gtk-contained-dark.css"

box > scrolledwindow .view,
box > scrolledwindow .view:backdrop {
  background-color: #12101A;
}

box > scrolledwindow > treeview .view:selected:focus,
box > scrolledwindow > treeview .view:selected { 
  background-color: #875CE4; 
  color: #12101A;
}

toolitem>widget>box>entry, 
toolitem>widget>box>entry:backdrop {
  background-color: #12101A;
}

.view:selected {
  color: #12101A;
}

EOL
cp ./gtk-contained-dark.css ~/.themes/ArchEVA-01/gtk-3.0/gtk.css
cp -r ./assets ~/.themes/ArchEVA-01/gtk-3.0/assets
