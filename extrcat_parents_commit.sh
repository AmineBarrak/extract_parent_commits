while read line;
do

  echo $line| grep -Po 'href="\K.*?(?=")'|cut -d'/' -f 5 ;

done< <(curl -s https://github.com/cloudfoundry/uaa/commit/9373fe935e5fe0926e814517066962d9444bed69 \
|grep "class=\"sha\" data-hotkey=")
