# docker-octave
This is a repository of the Dockerfile used to create a dockerimage with the base
octave install.  It starts a process to run a octave GUI in an X-window with 
/home/octave as the HOME folder.  AnX-server needs to be running on the host sytem for the GUI to open 

A typical command to run this image will be (works on Debian stretch)

> docker run --name=octave -t -d --net=host -e DISPLAY -v "$HOME/.Xauthority:/root/.Xauthority:rw" -v $PWD:/root anandvl/octave /bin/bash -c "cd /root; /usr/bin/octave"
