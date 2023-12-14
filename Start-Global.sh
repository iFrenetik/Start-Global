#!/bin/bash

########################################
#              SERVERS PATH            #
########################################

# PROXY
proxy="/home/proxy"
# AUTH
auth="/home/auth"
# HUB
hub="/home/hub"
# GAMES
survival="/home/survival"
skywars="/home/skywars"
boxpvp="/home/boxpvp"

##########################################
#            STARTING SERVERS            #
##########################################

echo " "
echo "-+------------------------------------+-"
echo "            IFRENZ NETWORK              "
echo "      SCRIPT.IFRENZ.NET @ COPYRIGHT     "
echo "-+------------------------------------+-"
echo " "
echo "Starting network..."
sleep 2
echo " "

# PROXY / BUNGEE
echo "-------------------"
echo "  STARTING PROXY   "
echo "-------------------"
echo "Starting the proxy server..."
chmod +x "$proxy/start.sh"
screen -dmS proxy bash -c "cd '$proxy' && ./start.sh"

sleep 4

# AUTH / REGISTER
echo " "
echo "-----------------"
echo "  STARTING AUTH  "
echo "-----------------"
echo "Starting the auth server..."
chmod +x "$auth/start.sh"
screen -dmS auth bash -c "cd '$auth' && ./start.sh"

sleep 4

# HUB / LOBBY
echo " "
echo "------------------"
echo "   STARTING HUB   "
echo "------------------"
echo "Starting the hub server..."
chmod +x "$hub/start.sh"
screen -dmS hub bash -c "cd '$hub' && ./start.sh"

sleep 4

# GAMES
echo " "
echo "------------------"
echo "STARTING SURVIVAL "
echo "------------------"
echo "Starting the survival server..."
chmod +x "$survival/start.sh"
screen -dmS survival bash -c "cd '$survival' && ./start.sh"

sleep 4

echo " "
echo "------------------"
echo " STARTING SKYWARS "
echo "------------------"
echo "Starting the skywars server..."
chmod +x "$skywars/start.sh"
screen -dmS skywars bash -c "cd '$skywars' && ./start.sh"

sleep 4

##################################
#        FIN DEL PROGRAMA        #
##################################

echo " "
echo "-------------------------------------"
echo "   THE SERVERS HAVE BEEN STARTED    "
echo "     CORRECTLY CLOSING PROGRAM      "
echo "-------------------------------------"
echo " "

sleep 2