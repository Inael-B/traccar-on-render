FROM traccar/traccar:6.7.1-debian

# Remove a interface web (HTML/CSS/JS) para deixar o container mais leve
RUN rm -rf /opt/traccar/web

# Define configurações padrão, mas espera-se que traccar.xml seja montado externamente
EXPOSE 8082 5000-5150 514

CMD ["/opt/traccar/bin/startDaemon.sh"]

