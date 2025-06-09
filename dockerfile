FROM traccar/traccar:6.7.1-debian

# Remove frontend web para deixar a imagem mais leve
RUN rm -rf /opt/traccar/web

EXPOSE 8082 5000-5150 514

# Não definir CMD, use o padrão da imagem oficial
