# Run this script to install and you will be available to run this script as dbxcli

rm -rf /usr/local/opencode/dbxcli

mkdir -p /usr/local/opencode/dbxcli

git clone https://github.com/sofibox/dbxcli /usr/local/opencode/dbxcli

chmod +x /usr/local/opencode/dbxcli/dropbox_uploader.sh /usr/local/opencode/dbxcli/dbxcli

rm -f /usr/local/bin/dbxcli /usr/bin/dbxcli

# Use command alias dbxcli
ln -s /usr/local/opencode/dbxcli/dbxcli /usr/local/bin

# Run setup wizard
dbxcli reconfigure