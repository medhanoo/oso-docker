FROM fedora:27
COPY hello.sh /opt/hello.sh
RUN chgrp -R 0 /opt && \
    chmod -R g=u /opt /etc/passwd	
USER 1000001
ENTRYPOINT [ "/opt/hello.sh" ]
CMD [ "HI ALL!" ]

