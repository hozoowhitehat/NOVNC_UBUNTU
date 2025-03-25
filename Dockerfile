FROM dorowu/ubuntu-desktop-lxde-vnc
RUN apt-get update && apt-get install -y pulseaudio
RUN echo "PULSE_SERVER=unix:/run/user/1000/pulse/native" >> /etc/environment


EXPOSE 5900
EXPOSE 4713/udp

CMD ["pulseaudio", "--system", "--disallow-exit", "--exit-idle-time=-1"]
