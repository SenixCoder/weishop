mv config.php config.php.back
mv admin/config.php admin/config.php.back
git reset --hard
git pull
mv config.php.back config.php
mv admin/config.php.back admin/config.php
chmod 777 * -R


