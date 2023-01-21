# Run this script to install and you will be available to run this script as dbxcli

echo -e "Removing previous dbxcli installation ...\n"
rm -rf /usr/local/opencode/dbxcli

echo -e "Creating a new dbxcli installation folder ...\n"
mkdir -p /usr/local/opencode/dbxcli

echo -e "Downloading dbxcli from github ...\n"
git clone https://github.com/sofibox/dbxcli /usr/local/opencode/dbxcli

echo -e "Giving execution permission to dropbox_uploader.sh and dbxcli ...\n"
chmod +x /usr/local/opencode/dbxcli/dropbox_uploader.sh /usr/local/opencode/dbxcli/dbxcli

echo -e "Removing previous dbxcli symbolic link ...\n"
rm -f /usr/local/bin/dbxcli /usr/bin/dbxcli

echo -e "Creating a new dbxcli symbolic link ...\n"
ln -s /usr/local/opencode/dbxcli/dbxcli /usr/local/bin

echo -e "Running dbxcli reconfigure ...\n"
dbxcli reconfigure