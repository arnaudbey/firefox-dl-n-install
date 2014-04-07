#!/bin/bash

## Download the version depending the OS. 32 / 64 b
if  uname -m| grep -q "i686" ;
then 
	wget -P /tmp/ff-nightly/ $(wget -q -O - http://nightly.mozilla.org | egrep -o 'href=.*?firefox.*?linux-i686\.tar\.bz2.*?['"'"'"]' | sed -e 's/^href=//' -e 's/["'"'"']//g')
else
	wget -P /tmp/ff-nightly/ $(wget -q -O - http://nightly.mozilla.org | egrep -o 'href=.*?firefox.*?linux-x86_64\.tar\.bz2.*?['"'"'"]' | sed -e 's/^href=//' -e 's/["'"'"']//g')
fi

## create opt/firefox-nightly
if [ ! -d "/opt/firefox-nightly" ] 
then
	sudo mkdir /opt/firefox-nightly
fi

## untar the downloaded archive
sudo tar -C /opt/firefox-nightly/ -xvjf /tmp/ff-nightly/*.tar.bz2

## create symlink
if [ ! -f "/usr/local/bin/firefox-nightly" ] 
then
	sudo ln -s /opt/firefox-nightly/firefox/firefox /usr/local/bin/firefox-nightly
fi

## clear tmp files
rm -rf /tmp/ff-nightly/*
