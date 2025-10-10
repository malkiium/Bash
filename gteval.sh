if [ -f $2 ]
then
    if [ -z $1 ]
    then
        echo "aucune option donnée."
    else
        if [ $1 = "M" ]
        then
            tr  "a-z" "A-Z" < $2
        elif [ $1 = "m" ]
        then
            tr "A-Z" "a-z" < $2
        elif [ $1 = "c" ]
        then
                read -p "choose params : " param1 param2
            tr $param1 $param2 < $2
        else
            echo "options incorrecte."
        fi
    fi
else
    echo "ce cfichier n'existe pas."
fi