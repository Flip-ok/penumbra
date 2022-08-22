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
"checkout 025-helike"
"new wallet"
"Check version"
"Check balance"
"penumbra-tobi-pizda"
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

"checkout 025-helike")
echo "========================================================================================================================"
cd $HOME/penumbra
rm -rf penumbra
git clone https://github.com/penumbra-zone/penumbra
cd
cd penumbra && git fetch && git checkout 026-hermippe && cargo update
cargo build --release --bin pcli
cargo run --release --bin pcli wallet reset
echo "========================================================================================================================"

break
;;

"new wallet")
echo "============================================================"
echo "new wallet"
echo "============================================================"

cd penumbra
cargo run --quiet --release --bin pcli wallet generate
echo "========================================================================================================================"

break
;;



"Check version")

cd penumbra
cargo run --release --bin pcli -- --version

break
;;


"Check balance")
cd penumbra
cargo run --quiet --release --bin pcli balance

break
;;

"penumbra-tobi-pizda")
echo "============================================================"
echo "Penumbra tobi pizda"
echo "============================================================"
echo "How many transsanction?"
echo "============================================================"
read n
read -p "Enter address wallet: " w
echo "============================================================"
echo "Penumbra transsaction start"
echo "============================================================"
function wal(){
    cargo run --quiet --release --bin pcli tx send 0.004861penumbra --to $w
}

for n in `seq "$n"`
do
wal
echo "============================================================"
echo -e  "\n\033[36m $n transsaction complete \033[0m"
echo "========================================================================================================================"
curl -s https://raw.githubusercontent.com/Flip-ok/Logo/main/Logo4861.sh | bash
echo "========================================================================================================================"
randomNumber=$(shuf -i 5-10 -n1)
sleep $randomNumber
done

break
;;

"Exit")
exit
;;
*) echo "invalid option $REPLY";;
esac
done
done
