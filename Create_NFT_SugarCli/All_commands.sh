bash <(curl -sSf https://sugar.metaplex.com/install.sh)
sugar --version

### Setup wallets

# Setup Solana Tool Suite
sh -c "$(curl -sSfL https://release.solana.com/v1.10.32/install)"
solana --version

# DxicyjXtnyHpQDaENJ5WsLhCe4XrQxFuMm76WoSHQzgu
solana-keygen new --outfile ./wallets/Owner.json

# FMSCVRzTNQxWvf5RN2CiW5H9RgVsyB1YkoQQDTgUguye
solana-keygen new --outfile ./wallets/Treasury.json

# HBRxfYAa3T4NKmq74psykRFsxAXBkG9AUvjzGFVRY2Q1
solana-keygen new --outfile ./wallets/Creator.json

#  To config just owner wallet yet and all 2 sol in it 
# solana config set --keypair ./wallets/Owner.json
pwd to get full path => /home/muhammadtalha/Documents/Working_Rust/Sugar machine
solana config set --keypair /home/muhammadtalha/Documents/Working_Rust/SugarMachine/wallets/Owner.json
solana config set --url https://metaplex.devnet.rpcpool.com/


solana balance
solana airdrop 2

curl https://docs.metaplex.com/assets/files/assets-ff6bd873ecd07b49c86faf3c7aab82d2.zip --output ./assets.zip
unzip assets.zip

### Launch Interactive Setup

# Candy Machine ID: 76i2u9FwDLKEN5xm7fyDGRHqK2PpNuc1ik6NxRa81UUi
sugar launch

git clone https://github.com/metaplex-foundation/candy-machine-ui ./candy-machine-ui/

cd ./candy-machine-ui/

yarn install

cp .env.example .env

yarn start