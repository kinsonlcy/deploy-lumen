# Update
sudo apt-get update

# Install cURL & ZIP/UNZIP
sudo apt-get install curl
sudo apt-get install zip unzip

# Install Apache
sudo apt-get install apache2
# Y to allow to use disk space
echo "Apache Installed Successfully!"

# Install PHP
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
# Y to allow to use disk space

# Inform Apache to prefer php files over html files
# sudo nano /etc/apache2/mods-enabled/dir.conf
# Move the index.php at first place

# Install PHP Required Extensions
sudo apt-get install php-cli php-mbstring php-gettext php-curl
sudo phpenmod mcrypt
sudo phpenmod mbstring
sudo phpenmod curl
echo "php-cli, curl, mcrypt, mbstring Installed Successfully!"

sudo a2enmod rewrite
sudo a2enmod ssl

# Install PHP Dev
sudo apt install php7.0-dev
echo "php7.0-dev Installed Successfully!"

sudo apt-get install php7.0-intl
echo "php7.0-intl Installed Successfully!"

# Install PHP Zip Extension
# sudo apt-get install php7.0-zip
# echo "PHP Zip Extension Installed Successfully!"


# Restart Apache Server
sudo systemctl restart apache2
# To See Apache Status
# sudo systemctl status apache2

# Install GIT
sudo apt-get install git
echo "Git Installed Successfully!"
git config --global user.name "Your Name"
git config --global user.email "youremail@domain.com"

# Install Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
echo "Composer Installed Successfully!"

sudo chmod -R 777 /var/www/html

# Git Clone your Site
git clone https://github.com/kinsonleung1996/api-bitly.git /var/www/html/api-bitly

# Composer Update
cd /var/www/html/api-bitly

mv .env.example .env
# sudo add-apt-repository ppa:ondrej/php
# sudo apt-get update
# sudo apt-get remove php7.0
# sudo apt-get install php7.2-xml
sudo chmod -R 777 /var/www/html/api-bitly/storage/
composer install
mv hashids.php /var/www/html/api-bitly/vendor/vinkla/hashids/config

sudo apt-get install php7.0-gmp
extension=php_gmp.so

