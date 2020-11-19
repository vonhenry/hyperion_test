
init(){
  cp /Users/song/Code/github.com/boscore/bos/build/programs/nodeos/nodeos ./bins/
  rm -rf chain_data/*
}

start(){
  ./bins/nodeos -e -p eosio -d ./chain_data --config-dir ./config  \
  --disable-replay-opts --trace-history --chain-state-history
}

case "$1"
in
    "init"  )   init;;
    "start" )   start;;
    *) echo "usage: cluster.sh init|start" ;;
esac
