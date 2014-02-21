# What is it ?

a small bash script who dl the lastest nightly of firefox for linux and install it in opt/ dir, and create the symlink  usr/local/bin/firefox-nightly

# How-to

Clone the projet
> git clone https://github.com/arnaudbey/ff-nightly-dl-and-install.git

> cd ff-nightly-dl-and-install.git

if you want to run this script later from anywhere
> sudo ln -s ./ff-nightly_dl_and_install.sh /usr/bin/firefox-nightly-update

launch the script
> sh ./ff-nightly_dl_and_install.sh

or 

> firefox-nightly-update



You can now launch ff last nighly build through *firefox-nightly* command
