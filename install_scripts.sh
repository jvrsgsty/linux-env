# Install scripts locally

# Exit on error
set -e

INSTALL_DIR=~

mkdir -p $INSTALL_DIR/local/bin

curl -fLo $INSTALL_DIR/tunnels https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/tunnels
curl -fLo $INSTALL_DIR/connect https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/connect
curl -fLo $INSTALL_DIR/vpn_commands.txt https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/vpn_commands.txt
curl -fLo $INSTALL_DIR/disconnect https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/disconnect
curl -fLo $INSTALL_DIR/vpnstatus https://raw.githubusercontent.com/jvrsgsty/linux-env/master/scripts/vpnstatus

echo ""
echo "DONE installing scripts"
echo "The VPN and ssh tunneling scripts (connect, disconnect, vpnstatus, tunnels) are now available at $INSTALL_DIR/local/bin/" 
echo "You can optionally add $INSTALL_DIR/local/bin to your PATH."
echo "You can use the following command to add this to your .bashrc"
echo ""
echo 'echo "export PATH='$INSTALL_DIR'/local/bin:\$PATH" >> ~/.bashrc'
echo ""

