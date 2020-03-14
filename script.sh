
#!/bin/bash

##Script de instalacao de ferramentas

sudo apt-get update
sudo apt-get upgrade

##instalacao da versao mais recente do NVM
sudo apt-get install build-essential libssl-dev
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.35.3/install.sh | bash
source ~/.profile
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

##instalacao da versao LTS do node e update do NPM 
nvm ls-remote
nvm install v12.16.1
npm i npm -g

##instalacao/update do git
sudo apt-get install git

##instalacao do gulp
npm install gulp-cli -g
npm install gulp -D
npx -p touch nodetouch gulpfile.js

##instalacao do pacote lamp
sudo apt-get install apache2
sudo apt-get install mysql-server mysql-client
sudo apt-get install php php-zip php-cli libapache2-mod-php php-mysql php-curl php-json php-mbstring php-xml php-bcmath

##instalacao do manager Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

#instalacao do Laravel e Yii2
composer global require laravel/installer
composer create-project --prefer-dist yiisoft/yii2-app-basic basic





