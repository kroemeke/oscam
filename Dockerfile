# oscam
FROM alpine:latest
RUN apk --no-cache add oscam
ADD config/ /etc/oscam/
USER oscam
EXPOSE 15000 15001
ENTRYPOINT ["/usr/bin/oscam"] 
