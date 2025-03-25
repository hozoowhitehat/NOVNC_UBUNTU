# NOVNC_UBUNTU
Fix sound shel clound noVNC  🫰📱💻
cd

rm -rf NOVNC_UBUNTU

git clone https://github.com/hozoowhitehat/NOVNC_UBUNTU

cd NOVNC_UBUNTU

docker build -t ubuntu-desktop-lxde-vnc-with-sound

docker run -d -p 6080:80 -p 5900:5900 -p 4713:4713/udp \
  -e RESOLUTION=1920x1080 \
  -e PULSE_SERVER=unix:/run/user/1000/pulse/native \
  -v /run/user/1000/pulse/native:/run/user/1000/pulse/native \
  ubuntu-desktop-lxde-vnc-with-sound
