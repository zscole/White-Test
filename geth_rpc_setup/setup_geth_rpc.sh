#!/bin/bash  
echo "Setting up geth RPC network"

while getopts ":n:t:h" OPTION
do
     case $OPTION in
         h)
             usage
             exit 1
             ;;
         t)
             TESTNAME=$OPTARG
             ;;
         n)
             FILENAME=$OPTARG
             ;;
         ?)
             usage
             exit
             ;;
     esac
done

echo  $FILENAME
echo  $TESTNAME

if [[ -n $FILENAME ]] 
then
    echo "Proceed."
else
    echo "please specify filename with -n!"
    exit 1
fi

if [[ -n $TESTNAME ]] 
then
    echo "Proceed."
else
    echo "please specify testname with -t!"
    exit 1
fi

echo "we have moved passed the if statement"

ssh-copy-id node2
ssh-copy-id node3
ssh-copy-id node4
ssh-copy-id node5
ssh-copy-id node6
ssh-copy-id node7
ssh-copy-id node8
ssh-copy-id node9
ssh-copy-id node10
ssh-copy-id node11
ssh-copy-id node12

tmux new-session -d -s $TESTNAME
# Copy genesis file
tmux send-keys "cp /home/appo/geth_rpc_setup/node1/genesis.json /home/appo/$FILENAME.json &&" C-m 
tmux send-keys "scp /home/appo/geth_rpc_setup/node2/genesis.json appo@node2:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node3/genesis.json appo@node3:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node4/genesis.json appo@node4:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node5/genesis.json appo@node5:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node6/genesis.json appo@node6:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node7/genesis.json appo@node7:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node8/genesis.json appo@node8:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node9/genesis.json appo@node9:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node10/genesis.json appo@node10:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node11/genesis.json appo@node11:/home/appo/$FILENAME.json &&" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node12/genesis.json appo@node12:/home/appo/$FILENAME.json &&" C-m


# initialize geth
tmux send-keys "geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node2 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node3 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node4 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node5 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node6 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node7 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node8 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node9 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node10 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node11 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m
tmux send-keys "ssh appo@node12 geth --datadir=/home/appo/$FILENAME init /home/appo/$FILENAME.json &&" C-m

sleep 10s

#View tmux console
tmux attach -t $TESTNAME