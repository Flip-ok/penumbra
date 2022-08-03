cd $HOME/penumbra
rm -rf penumbra
git clone https://github.com/penumbra-zone/penumbra
cd penumbra && git fetch && git checkout 023-arche.1 && cargo update
cargo build --release --bin pcli
cargo run --release --bin pcli wallet reset
echo -e " 
▀▀█▀▀ █──█ ─▀─ █▀▀ 　 █▀▄▀█ █▀▀ █▀▀ █▀▀ █▀▀█ █▀▀▀ █▀▀ 　 ─▀─ █▀▀ 　 █▀▀█ █▀▀▄ █── █──█ 
─░█── █▀▀█ ▀█▀ ▀▀█ 　 █─▀─█ █▀▀ ▀▀█ ▀▀█ █▄▄█ █─▀█ █▀▀ 　 ▀█▀ ▀▀█ 　 █──█ █──█ █── █▄▄█ 
─░█── ▀──▀ ▀▀▀ ▀▀▀ 　 ▀───▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀──▀ ▀▀▀▀ ▀▀▀ 　 ▀▀▀ ▀▀▀ 　 ▀▀▀▀ ▀──▀ ▀▀▀ ▄▄▄█ 

▀█─█▀ ─▀─ █▀▀ ─▀─ █▀▀▄ █── █▀▀ 　 ▀▀█▀▀ █▀▀█ 　 █▀▀▀ █▀▀█ █──█ █▀▀ ─ 
─█▄█─ ▀█▀ ▀▀█ ▀█▀ █▀▀▄ █── █▀▀ 　 ──█── █──█ 　 █─▀█ █▄▄█ █▄▄█ ▀▀█ ▄ 
──▀── ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀─ ▀▀▀ ▀▀▀ 　 ──▀── ▀▀▀▀ 　 ▀▀▀▀ ▀──▀ ▄▄▄█ ▀▀▀ █ "
