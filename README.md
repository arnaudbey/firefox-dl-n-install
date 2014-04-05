# What is it ?

a small bash script who dl the lastest nightly of firefox for linux and install it in opt/ dir, and create the symlink  usr/local/bin/firefox-nightly

# How-to

> git clone https://github.com/arnaudbey/ff-nightly-dl-and-install.git

> cd ff-nightly-dl-and-install

> sh ./ff-nightly_dl_and_install.sh

if you want to run this script later from anywhere

> sudo cp ff-nightly_dl_and_install.sh /opt/firefox-nightly-update.sh

> sudo ln -s /opt/firefox-nightly-update.sh /usr/local/bin/firefox-nightly-update

> firefox-nightly-update


You can now launch ff last nighly build through *firefox-nightly* command
