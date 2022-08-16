#!/bin/bash

while true
do

# Logo

echo "========================================================================================================================"
curl -s https://raw.githubusercontent.com/Flip-ok/Logo/main/Logo4861.sh | bash
echo "========================================================================================================================"

# Menu

PS3='Select an action: '
options=(
"Install"
"Check version"
"Check balance"
"checkout 025-helike"
"Exit")
select opt in "${options[@]}"
do
case $opt in

"Install")
echo "============================================================"
echo "Install start"
echo "============================================================"

#UPDATE APT
sudo apt update && sudo apt upgrade -y
sudo apt install make curl tar wget jq build-essential -y
sudo apt install make clang pkg-config libssl-dev 

#INSTALL po
sudo apt install curl build-essential gcc make -y

#INSTALL
curl https://get.ignite.com/DecentralCardGame/Cardchain@latest! | sudo bash

#INSTALL rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source ~/.profile
source ~/.cargo/env

break
;;

"Check version")

cargo run --release --bin pcli -- --version

break
;;


"Check balance")
cargo run --quiet --release --bin pcli balance

break
;;


"checkout 025-helike")
echo "========================================================================================================================"
cd $HOME/penumbra
rm -rf penumbra
git clone https://github.com/penumbra-zone/penumbra
cd
cd penumbra && git fetch && git checkout 025-helike && cargo update
cargo build --release --bin pcli
cargo run --release --bin pcli wallet reset
echo "========================================================================================================================"

break
;;

"Exit")
exit
;;
*) echo "invalid option $REPLY";;
esac
done
done
