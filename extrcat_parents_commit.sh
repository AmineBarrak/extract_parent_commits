while read line;
do

  echo $line| grep -Po 'href="\K.*?(?=")'|cut -d'/' -f 5 ;

done< <(curl -s https://github.com/$1/commit/$2 \
|grep "class=\"sha\" data-hotkey=")
