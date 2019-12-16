# Install scripts locally

# Exit on error
set -e

INSTALL_DIR=~
SCRIPT_BIN=$INSTALL_DIR/local/bin 

mkdir -p $SCRIPT_BIN

curl -fLo $SCRIPT_BIN/tunnels https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/tunnels
curl -fLo $SCRIPT_BIN/connect https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/connect
curl -fLo $SCRIPT_BIN/vpn_commands.txt https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/vpn_commands.txt
curl -fLo $SCRIPT_BIN/disconnect https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/disconnect
curl -fLo $SCRIPT_BIN/vpnstatus https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/vpnstatus

chmod u+x $SCRIPT_BIN/tunnels
chmod u+x $SCRIPT_BIN/connect
chmod u+x $SCRIPT_BIN/disconnect
chmod u+x $SCRIPT_BIN/vpnstatus

echo ""
echo "DONE installing scripts"
echo "The VPN and ssh tunneling scripts (connect, disconnect, vpnstatus, tunnels) are now available at $SCRIPT_BIN" 
echo "You can optionally add $SCRIPT_BIN to your PATH."
echo "You can use the following command to add this to your .bashrc"
echo ""
echo 'echo "export PATH='$SCRIPT_BIN':\$PATH" >> ~/.bashrc'
echo ""

