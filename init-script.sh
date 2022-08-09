#!/bin/sh
if [ ! -d /datadir/erigon/chaindata ]; then
    echo "/datadir/erigon/chaindata not found, running 'erigon init'..."
    erigon --datadir /datadir/erigon  init /datadir/genesis.json
    echo "...done!"
fi

erigon "$@"

