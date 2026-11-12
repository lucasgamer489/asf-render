FROM justarchi/archisteamfarm:latest
RUN mkdir -p /app/config /asf/config && \
    echo '{"Kestrel":{"Endpoints":{"HTTP":{"Url":"http://*:1242"}}}}' | tee /app/config/IPC.config /asf/config/IPC.config && \
    echo '{"IPCPassword":"123456","Headless":true,"IPC":true}' | tee /app/config/ASF.json /asf/config/ASF.json
EXPOSE 1242
