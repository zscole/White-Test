WB TEST
ENV


- Install Geth from PPA

    sudo apt-get install software-properties-common
    sudo add-apt-repository -y ppa:ethereum/ethereum
    sudo apt-get update
    sudo apt-get install ethereum

- Set up a new geth account after installing
    geth account new
Make note of account address.
This can also be done later in console with following command:
    personal.newAccount("passphrase")

- Upload custom genesis block to datadir. Check CustomGenesis.json file for example. 

- Create geth account
    geth account new
Don't forget your password and take note of this account address.

- Initialize genesis block in geth.
    geth --datadir /path/to/datadir init /path/to/customgenesis 
Add whatever custom flags are appropriate for your particular configuartion. 

- Start your geth instance and drop into console.
     geth --datadir /path/to/datadir init /path/to/customgenesis 
Add whatever custom flags are appropriate. 

- Get enode address in console.
    admin.nodeInfo.enode
Take note of this enode address for future reference. 

- 