FROM fedora:29
MAINTAINER Alexis Jeandet "alexis.jeandet@member.fsf.org"

# Install.
RUN dnf update -y
RUN dnf install -y --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
RUN dnf update -y
RUN dnf install -y --nogpgcheck VirtualBox unzip xonsh vagrant
dnf install -y @vagrant
dnf copr enable -y pvalena/vagrant
dnf update -y @vagrant
