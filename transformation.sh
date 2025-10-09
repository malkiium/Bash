read -p "donner un fichier : " x
if [ -f $x ]
then
    echo -e "que vouller vous faire ? \n 1. transformer en maj \n 2. transformer en min \n 3 crypter \n"
    read usrinp
    if [ $usrinp -eq 1 ]
    then
        tr "a-z" "A-Z" $x
    fi
fi