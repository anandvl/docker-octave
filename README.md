# docker-octave
This is a repository of the Dockerfile used to create a dockerimage with the base
octave install.  It is set up to run octave GUI in an X-window with /root as the 
HOME folder.  An X-server needs to be running on the host sytem for the GUI to open 

A typical command to run this image will be (works on Debian stretch)

> docker run --name=octave -t -d --net=host -e DISPLAY -v "$HOME/.Xauthority:/root/.Xauthority:rw" -v $PWD:/root anandvl/octave /bin/bash -c "cd /root; /usr/bin/octave"

It uses the latest octave (as of the commit date) - currently 4.2

This image has been used as a companion to the highly popular Andrew Ng's coursera 
course on Machine Learning - at least for the first 3 weeks.  May require installation
of additional packages for later weeks.
