FROM justarchi/archisteamfarm:latest
USER root
RUN mkdir -p /asf/config && \
    echo '{"Kestrel":{"Endpoints":{"HTTP":{"Url":"http://*:1242"}}}}' > /asf/config/IPC.config && \
    echo '{"IPCPassword":"123456","Headless":true,"IPC":true}' > /asf/config/ASF.json && \
    chown -R asf:asf /asf/config
USER asf
EXPOSE 1242
