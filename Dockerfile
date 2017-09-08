FROM diameter/rtorrent-rutorrent:stable
USER root
ADD plimits /var/www/rutorrent/plugins/plimits
RUN chown -R www-data:www-data /var/www/rutorrent/plugins/plimits && php /var/www/rutorrent/php/initplugins.php
