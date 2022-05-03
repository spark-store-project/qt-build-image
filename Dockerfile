FROM debian:10

RUN apt update && apt install ca-certificates gnupg -y

ADD sources.list /etc/apt/sources.list
ADD uos.conf /etc/apt/auth.conf.d/uos.conf

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 425956BB3E31DF51

RUN apt update

RUN apt install debhelper pkg-config qtchooser libqt5core5a libqt5gui5 libqt5widgets5 libqt5network5 libqt5concurrent5 libdtkcore-dev libdtkgui-dev  libdtkwidget-dev qttools5-private-dev libnotify-dev qtwebengine5-dev -y

RUN apt clean && rm /etc/apt/auth.conf.d/uos.conf
