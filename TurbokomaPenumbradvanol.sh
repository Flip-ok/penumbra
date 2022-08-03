#!/bin/bash

while true
do
echo "============================================================"
curl -s https://raw.githubusercontent.com/Flip-ok/penumbra-Arche/main/TurbokomaPenumbradvanol.sh | bash
echo "============================================================"

PS3='Select an action: '
options=("Prepare the server for installation" "Active" "Passive" )
select opt in "${options[@]}"
               do
                   case $opt in
"Active")

cd $HOME/penumbra
rm -rf penumbra
git clone https://github.com/penumbra-zone/penumbra
cd penumbra && git fetch && git checkout 023-arche.1 && cargo update
cargo build --release --bin pcli
cargo run --release --bin pcli wallet reset

echo -e "█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░████░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░░░░░░░░░░░░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█░░░░░░▄▀░░░░░░█░░▄▀░░██░░▄▀░░█░░░░▄▀░░░░█░░▄▀░░░░░░░░░░████░░▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█
█████░░▄▀░░█████░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░████████████░░▄▀░░░░░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░█████████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░█████████
█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░███░░▄▀░░███░░▄▀░░░░░░░░░░████░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░█
█████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░███░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░░░░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░███░░▄▀░░███░░░░░░░░░░▄▀░░████░░▄▀░░██░░░░░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░░░░░░░░░▄▀░░█░░░░░░░░░░▄▀░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░█
█████░░▄▀░░█████░░▄▀░░██░░▄▀░░███░░▄▀░░███████████░░▄▀░░████░░▄▀░░██████████░░▄▀░░█░░▄▀░░█████████████████░░▄▀░░█████████░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████
█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░░░▄▀░░░░█░░░░░░░░░░▄▀░░████░░▄▀░░██████████░░▄▀░░█░░▄▀░░░░░░░░░░█░░░░░░░░░░▄▀░░█░░░░░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█
█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░██████████░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█████░░░░░░█████░░░░░░██░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░████░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
██████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░░░░░█░░░░░░░░░░░░░░████░░░░░░░░░░░░░░█░░░░░░██████████░░░░░░█░░░░░░█████████░░░░░░░░██░░░░░░░░█
█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░██░░▄▀░░█░░▄▀░░█████████░░▄▀▄▀░░██░░▄▀▄▀░░█
█░░░░▄▀░░░░█░░▄▀░░░░░░░░░░████░░▄▀░░░░░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░██░░▄▀░░█░░▄▀░░█████████░░░░▄▀░░██░░▄▀░░░░█
███░░▄▀░░███░░▄▀░░████████████░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░▄▀░░██░░▄▀░░█░░▄▀░░███████████░░▄▀▄▀░░▄▀▄▀░░███
███░░▄▀░░███░░▄▀░░░░░░░░░░████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░███████████░░░░▄▀▄▀▄▀░░░░███
███░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░█████████████░░░░▄▀░░░░█████
███░░▄▀░░███░░░░░░░░░░▄▀░░████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░███████████████░░▄▀░░███████
███░░▄▀░░███████████░░▄▀░░████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░░░░░▄▀░░█░░▄▀░░███████████████░░▄▀░░███████
█░░░░▄▀░░░░█░░░░░░░░░░▄▀░░████░░▄▀░░░░░░▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░███████░░▄▀░░███████
█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░░░░░░░░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░███████░░▄▀░░███████
█░░░░░░░░░░█░░░░░░░░░░░░░░████░░░░░░░░░░░░░░█░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░███████░░░░░░███████
██████████████████████████████████████████████████████████████████████████████████████████████████████
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░██░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░███░░░░░░█████████░░░░░░░░░░░░░░████░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░███░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█░░▄▀░░██░░▄▀░░█░░░░▄▀░░░░█░░▄▀░░░░░░░░░░█░░░░▄▀░░░░█░░▄▀░░░░░░▄▀░░███░░▄▀░░█████████░░▄▀░░░░░░░░░░████░░░░░░▄▀░░░░░░█░░▄▀░░░░░░▄▀░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░███████████░░▄▀░░███░░▄▀░░██░░▄▀░░███░░▄▀░░█████████░░▄▀░░████████████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░░░░░░░░░███░░▄▀░░███░░▄▀░░░░░░▄▀░░░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░███░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░░░░░░░░░▄▀░░███░░▄▀░░███░░▄▀░░░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░▄▀▄▀░░▄▀▄▀░░███░░▄▀░░███████████░░▄▀░░███░░▄▀░░███░░▄▀░░████░░▄▀░░█░░▄▀░░█████████░░▄▀░░████████████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░░░▄▀▄▀▄▀░░░░█░░░░▄▀░░░░█░░░░░░░░░░▄▀░░█░░░░▄▀░░░░█░░▄▀░░░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░████████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█
███░░░░▄▀░░░░███░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█
█████░░░░░░█████░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░████████░░░░░░█████░░░░░░░░░░░░░░█
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
████████████████████████████████████████████████████████████████████████
█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░██░░░░░░░░█░░░░░░░░░░░░░░████████
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀░░██░░▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████████
█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░░░▄▀░░██░░▄▀░░░░█░░▄▀░░░░░░░░░░████████
█░░▄▀░░█████████░░▄▀░░██░░▄▀░░███░░▄▀▄▀░░▄▀▄▀░░███░░▄▀░░████████████████
█░░▄▀░░█████████░░▄▀░░░░░░▄▀░░███░░░░▄▀▄▀▄▀░░░░███░░▄▀░░░░░░░░░░████████
█░░▄▀░░██░░░░░░█░░▄▀▄▀▄▀▄▀▄▀░░█████░░░░▄▀░░░░█████░░▄▀▄▀▄▀▄▀▄▀░░████████
█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░▄▀░░███████░░▄▀░░███████░░░░░░░░░░▄▀░░████████
█░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░███████░░▄▀░░███████████████░░▄▀░░████████
█░░▄▀░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░███████░░▄▀░░███████░░░░░░░░░░▄▀░░█░░░░░░█
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░███████░░▄▀░░███████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░█
█░░░░░░░░░░░░░░█░░░░░░██░░░░░░███████░░░░░░███████░░░░░░░░░░░░░░█░░░░░░█
████████████████████████████████████████████████████████████████████████"

break
;;

"Passive")

cd $HOME/penumbra
rm -rf penumbra
git clone https://github.com/penumbra-zone/penumbra
cd penumbra && git fetch && git checkout 023-arche.1 && cargo update
cargo build --release --bin pcli
cargo run --release --bin pcli wallet reset

echo -e "█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░████░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░░░░░░░░░░░░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█░░░░░░▄▀░░░░░░█░░▄▀░░██░░▄▀░░█░░░░▄▀░░░░█░░▄▀░░░░░░░░░░████░░▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█
█████░░▄▀░░█████░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░████████████░░▄▀░░░░░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░█████████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░█████████
█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░███░░▄▀░░███░░▄▀░░░░░░░░░░████░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░█
█████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░███░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░░░░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░███░░▄▀░░███░░░░░░░░░░▄▀░░████░░▄▀░░██░░░░░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░░░░░░░░░▄▀░░█░░░░░░░░░░▄▀░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░█
█████░░▄▀░░█████░░▄▀░░██░░▄▀░░███░░▄▀░░███████████░░▄▀░░████░░▄▀░░██████████░░▄▀░░█░░▄▀░░█████████████████░░▄▀░░█████████░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████
█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░░░▄▀░░░░█░░░░░░░░░░▄▀░░████░░▄▀░░██████████░░▄▀░░█░░▄▀░░░░░░░░░░█░░░░░░░░░░▄▀░░█░░░░░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█
█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░██████████░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█████░░░░░░█████░░░░░░██░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░████░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
██████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░░░░░█░░░░░░░░░░░░░░████░░░░░░░░░░░░░░█░░░░░░██████████░░░░░░█░░░░░░█████████░░░░░░░░██░░░░░░░░█
█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░██░░▄▀░░█░░▄▀░░█████████░░▄▀▄▀░░██░░▄▀▄▀░░█
█░░░░▄▀░░░░█░░▄▀░░░░░░░░░░████░░▄▀░░░░░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░██░░▄▀░░█░░▄▀░░█████████░░░░▄▀░░██░░▄▀░░░░█
███░░▄▀░░███░░▄▀░░████████████░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░▄▀░░██░░▄▀░░█░░▄▀░░███████████░░▄▀▄▀░░▄▀▄▀░░███
███░░▄▀░░███░░▄▀░░░░░░░░░░████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░███████████░░░░▄▀▄▀▄▀░░░░███
███░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░█████████████░░░░▄▀░░░░█████
███░░▄▀░░███░░░░░░░░░░▄▀░░████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░███████████████░░▄▀░░███████
███░░▄▀░░███████████░░▄▀░░████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░░░░░▄▀░░█░░▄▀░░███████████████░░▄▀░░███████
█░░░░▄▀░░░░█░░░░░░░░░░▄▀░░████░░▄▀░░░░░░▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░███████░░▄▀░░███████
█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░░░░░░░░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░███████░░▄▀░░███████
█░░░░░░░░░░█░░░░░░░░░░░░░░████░░░░░░░░░░░░░░█░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░███████░░░░░░███████
██████████████████████████████████████████████████████████████████████████████████████████████████████
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░██░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░███░░░░░░█████████░░░░░░░░░░░░░░████░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░███░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█░░▄▀░░██░░▄▀░░█░░░░▄▀░░░░█░░▄▀░░░░░░░░░░█░░░░▄▀░░░░█░░▄▀░░░░░░▄▀░░███░░▄▀░░█████████░░▄▀░░░░░░░░░░████░░░░░░▄▀░░░░░░█░░▄▀░░░░░░▄▀░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░███████████░░▄▀░░███░░▄▀░░██░░▄▀░░███░░▄▀░░█████████░░▄▀░░████████████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░░░░░░░░░███░░▄▀░░███░░▄▀░░░░░░▄▀░░░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░███░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░░░░░░░░░▄▀░░███░░▄▀░░███░░▄▀░░░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░▄▀▄▀░░▄▀▄▀░░███░░▄▀░░███████████░░▄▀░░███░░▄▀░░███░░▄▀░░████░░▄▀░░█░░▄▀░░█████████░░▄▀░░████████████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█
█░░░░▄▀▄▀▄▀░░░░█░░░░▄▀░░░░█░░░░░░░░░░▄▀░░█░░░░▄▀░░░░█░░▄▀░░░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░████████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█
███░░░░▄▀░░░░███░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█
█████░░░░░░█████░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░████████░░░░░░█████░░░░░░░░░░░░░░█
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
████████████████████████████████████████████████████████████████████████
█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░██░░░░░░░░█░░░░░░░░░░░░░░████████
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀░░██░░▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████████
█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░░░▄▀░░██░░▄▀░░░░█░░▄▀░░░░░░░░░░████████
█░░▄▀░░█████████░░▄▀░░██░░▄▀░░███░░▄▀▄▀░░▄▀▄▀░░███░░▄▀░░████████████████
█░░▄▀░░█████████░░▄▀░░░░░░▄▀░░███░░░░▄▀▄▀▄▀░░░░███░░▄▀░░░░░░░░░░████████
█░░▄▀░░██░░░░░░█░░▄▀▄▀▄▀▄▀▄▀░░█████░░░░▄▀░░░░█████░░▄▀▄▀▄▀▄▀▄▀░░████████
█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░▄▀░░███████░░▄▀░░███████░░░░░░░░░░▄▀░░████████
█░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░███████░░▄▀░░███████████████░░▄▀░░████████
█░░▄▀░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░███████░░▄▀░░███████░░░░░░░░░░▄▀░░█░░░░░░█
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░███████░░▄▀░░███████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░█
█░░░░░░░░░░░░░░█░░░░░░██░░░░░░███████░░░░░░███████░░░░░░░░░░░░░░█░░░░░░█
████████████████████████████████████████████████████████████████████████"
