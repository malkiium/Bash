read -p "what table ? : " x
read -p "nmb of itération ? : " y
res=0

for i in $y
do
    let res=$i*$x
    echo "$i x $x = $res" >> results
done

more results
rm results