#!/bin/bash

la=$1

cp -rf ../$la/ ./
li=`find $la/ -type f -name "*.php"`
for i in $li
do
    cat $i | grep -v '*' > temp
    sed -i -e 's/  //g' temp
    sed -i -e 's/\t//g' temp
    sed -i -e 's/Array /array/g' temp
    sed -i -e 's/Array/array/g' temp
    sed -i -e "s/' ,/',/g" temp
    sed -i -e "s/' =>/'=>/g" temp
    sed -i -e "s/=> '/=>'/g" temp
    mv temp $i
done
php2po -P $la/ pot-$la/

echo 'Well done! This script remove all string with "*" from en_us php language files. No you can load source pot files for translate in special program like pootle or weblate.'
echo 'When you finish to translate, download po files and put it to po/ folder, then run script ./after_translate.sh'

# url http://docs.translatehouse.org/projects/translate-toolkit/en/latest/commands/php2po.html
