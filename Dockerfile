#FROM fedora:27
FROM busybox:latest
COPY hello.sh /opt/hello.sh
RUN chgrp -R 0 /opt && \
    chmod -R g=u /opt /etc/passwd && chmod a+x /opt/hello.sh
USER 1000001
ENTRYPOINT [ "/opt/hello.sh" ]
CMD [ "id" ]
