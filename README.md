Patch for vtigercrm 6.
----------------------

Todo:

1. Move Alphabet to langguages store
look at
 ```
lyouts/vlayout/modules/Vtiger/ListViewContents.tpl
languages/your_lang/Vtiger.php
'LBL_ABC'=>'А,Б,В,Г,Д,Е,Ё,Ж,З,И,Й,К,Л,М,Н,О,П,Р,С,Т,У,Ф,Х,Ц,Ч,Ш,Щ,Э,Ю,Я',
```

2. Add show/hide left menu panel
css+js fix, Feeback link moved to bottom menu

3. Fix some tanslation
many-many changes
3.1 Script to remove bad string from php arrays. Rename bad Arrays ARRAYS. Temporary remove upper text. Make po from php -> translate it in special program like pootle or weblate and back po files to php arrays (this is nessasary for better translate).

4. Nginx + php5-fpm config
I work with nginx and php5-fpm. I have to configs: one for develop, second for production (caching,gzip,concat css+js to one file)

If You wish Send me email or/and create issue.

