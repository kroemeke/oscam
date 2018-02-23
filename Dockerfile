# oscam
FROM alpine:latest
RUN apk --no-cache add oscam
ADD config/ /etc/oscam/
USER oscam
EXPOSE 18500 18501
ENTRYPOINT ["/usr/bin/oscam"] 
