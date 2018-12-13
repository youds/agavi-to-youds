# Agavi to Youds Framework Script

Required Environment Settings
ln -s /usr/share/pear/phing/ /usr/local/php72/lib/php/phing 
ln -s /usr/local/bin/youds-framework-working/build/phing/org/ /usr/local/php72/lib/php/phing/org
mv /usr/share/pear/phing/org/youds/build/tasks/YoudsFrameworkTransformstringtoagaviidentifierTask.php /usr/share/pear/phing/org/youds/build/tasks/YoudsFrameworkTransformstringtoyoudsidentifierTask.php
 * Where @/usr/local/php72/lib/php@ is in the PHP include path
