FROM adminer:4.8.0

ADD --chown=adminer:adminer https://raw.githubusercontent.com/mhucik/AdminerForeignKeysPlugin/master/AdminerForeignKeysPlugin.php  /var/www/html/plugins/
ADD --chown=adminer:adminer https://gist.github.com/anonymous/13b657087cf55323150c/raw/2e56a42bb1590fa4b95fb05d05df7e4d062ea467/display-foreign-key-name.php /var/www/html/plugins/

ENV ADMINER_PLUGINS="tables-filter edit-calendar struct-comments AdminerForeignKeysPlugin display-foreign-key-name"


