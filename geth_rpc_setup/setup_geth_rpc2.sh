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


#copy keystore files
tmux send-keys "cp /home/appo/geth_rpc_setup/node1/UTC* /home/appo/$FILENAME/keystore/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node2/UTC* appo@node2:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node3/UTC* appo@node3:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node4/UTC* appo@node4:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node5/UTC* appo@node5:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node6/UTC* appo@node6:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node7/UTC* appo@node7:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node8/UTC* appo@node8:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node9/UTC* appo@node9:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node10/UTC* appo@node10:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node11/UTC* appo@node11:/home/appo/$FILENAME/keystore" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node12/UTC* appo@node12:/home/appo/$FILENAME/keystore" C-m


#copy the static node file: 
#copy keystore files
tmux send-keys "cp /home/appo/geth_rpc_setup/static-nodes.json /home/appo/$FILENAME/static_nodes.json" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node2:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node3:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node4:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node5:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node6:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node7:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node8:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node9:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node10:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node11:/home/appo/$FILENAME/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/static-nodes.json appo@node12:/home/appo/$FILENAME/" C-m

#copy  the notekey files: 
tmux send-keys "cp /home/appo/geth_rpc_setup/node1/nodekey /home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node2/nodekey appo@node2:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node3/nodekey appo@node3:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node4/nodekey appo@node4:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node5/nodekey appo@node5:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node6/nodekey appo@node6:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node7/nodekey appo@node7:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node8/nodekey appo@node8:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node9/nodekey appo@node9:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node10/nodekey appo@node10:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node11/nodekey appo@node11:/home/appo/$FILENAME/geth/" C-m
tmux send-keys "scp /home/appo/geth_rpc_setup/node12/nodekey appo@node12:/home/appo/$FILENAME/geth/" C-m


#View tmux console
tmux attach -t $TESTNAME