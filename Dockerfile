FROM nimmis/apache-php5

RUN rm -Rf /etc/apache2/mods-enabled/*; cp -Rf /etc/apache2/mods-available/* /etc/apache2/mods-enabled/; rm -Rf /etc/apache2/mods-enabled/lua.*

COPY supervisord.conf /etc/supervisor
COPY apache2.conf /etc/supervisor/conf.d
