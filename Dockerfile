FROM java:openjdk-7-jre
MAINTAINER Jan Vincent Liwanag <jvliwanag@gmail.com>

ENV JITSI_VIDEOBRIDGE_VER 382

ADD tools/start.sh /start.sh

RUN wget -O /tmp/jvb.zip https://download.jitsi.org/jitsi-videobridge/linux/jitsi-videobridge-linux-x64-$JITSI_VIDEOBRIDGE_VER.zip && \
  unzip -d /tmp /tmp/jvb.zip && \
  mv /tmp/jitsi-videobridge-linux-x64-$JITSI_VIDEOBRIDGE_VER /opt/jitsi-videobridge && \
  rm /tmp/jvb.zip

RUN mkdir -p /root/.sip-communicator && \
  echo 'org.jitsi.impl.neomedia.transform.srtp.SRTPCryptoContext.checkReplay=false' > /root/.sip-communicator/sip-communicator.properties

ENTRYPOINT ["/start.sh"]
