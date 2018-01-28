FROM fedora:27
MAINTAINER Alexis Jeandet "alexis.jeandet@member.fsf.org"

# Install.
RUN dnf install -y http://download.virtualbox.org/virtualbox/5.1.28/VirtualBox-5.1-5.1.28_117968_fedora25-1.x86_64.rpm unzip xonsh vagrant

