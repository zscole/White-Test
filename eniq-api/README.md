Ethereum Network Intelligence API
============

This is the backend service that pushes data from the network to the front end using JSON-RPC and web sockets. 

Generally, we set up one "alpha node" to serve the netstats GUI, which is the front end handled by eth-netstats. 
Meanwhile, every other node needs to have this backend installed. 
Assuming each node is operating within its own separate LAN, the data is pushed to the IP and PORT of the alpha node using this intelligenace API.

This code is based on (https://github.com/cubedro/eth-net-intelligence-api)[this repository] and configured to meet the needs of our current set up. 

