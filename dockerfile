FROM traccar/traccar:6.7.1-debian

# Define versão
ENV TRACCAR_VERSION 5.13

# Instala dependências
RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*

# Baixa e extrai o Traccar
RUN wget https://github.com/traccar/traccar/releases/download/v${TRACCAR_VERSION}/traccar-linux-64-${TRACCAR_VERSION}.zip \
    && unzip traccar-linux-64-${TRACCAR_VERSION}.zip -d /opt \
    && rm traccar-linux-64-${TRACCAR_VERSION}.zip

WORKDIR /opt/traccar

# Torna o script de inicialização executável
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8082 5000 5001 5055 514 5002

CMD ["/start.sh"]
