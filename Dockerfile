FROM justarchi/archisteamfarm:latest
RUN mkdir -p /asf/config && \
    echo '{"Kestrel":{"Endpoints":{"HTTP":{"Url":"http://*:1242"}}}}' > /asf/config/IPC.config && \
    echo '{"IPCPassword":"123456","Headless":true,"IPC":true}' > /asf/config/ASF.json
EXPOSE 1242
