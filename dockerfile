FROM traccar/traccar:6.7.1-debian

RUN rm -rf /opt/traccar/web

EXPOSE 8082

ENV TRACCAR_PORT 8082

# Não definir CMD, use o padrão da imagem oficial
