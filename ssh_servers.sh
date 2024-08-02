#!/bin/bash
SERVER_LIST="servers.txt"
SSH_OPTIONS="-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"
while IFS=',' read -r SERVER USER PASSWORD; do 
  gnome-terminal -- bash -c "sshpass -p '$PASSWORD' ssh $USER@$SERVER; exec bash" 
done < "$SERVER_LIST" echo "All connection established"
