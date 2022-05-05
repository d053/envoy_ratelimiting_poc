FROM envoyproxy/envoy:v1.21.2

COPY /config/envoy.yaml /config/envoy.yaml
COPY entrypoint.sh /
RUN chmod 500 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
