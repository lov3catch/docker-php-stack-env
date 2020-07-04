install-composer:
		wget -O composer-setup.sig https://composer.github.io/installer.sig
		wget -O composer-setup.php https://getcomposer.org/installer
		awk '{print $$0 "  composer-setup.php"}' composer-setup.sig | sha384sum --check
		php composer-setup.php --quiet
		rm composer-setup.*
		mv composer.phar /usr/local/bin/composer

analyse:
		vendor/bin/phpstan analyse -l 7 src/

repl:
		vendor/bin/psysh