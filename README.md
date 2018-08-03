# Geth Bash Build

Setting up a local, private Ethereum testnet. The following assumes that each node is operating independently within it's own VLAN. 

## Install Geth from PPA
```
    sudo apt-get install software-properties-common
    sudo add-apt-repository -y ppa:ethereum/ethereum
    sudo apt-get update
    sudo apt-get install ethereum
```

## Upload custom genesis block

Add the .json file to datadir. Check CustomGenesis.json file for example. 

## Create geth account

    `geth account new`

Don't forget your password and take note of this account address.

This can also be done in geth console with `personal.newAccount("passphrase")`

## Initialize genesis block

    `geth --datadir /path/to/datadir init /path/to/customgenesis` 

Add whatever custom flags are appropriate for your particular configuartion. 

## Start geth

     `geth --datadir /path/to/datadir init /path/to/customgenesis` 

Add whatever custom flags are appropriate. 

## Get enode address

    `admin.nodeInfo.enode`

Take note of this enode address for future reference. 
 
