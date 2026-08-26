currentDir=$(pwd)

dircs=$(find * -maxdepth 0 -type d)
regs=$(find * -maxdepth 0 -type f)
syms=$(find * -maxdepth 0 -type l)
blocks=$(find * -maxdepth 0 -type b)
chars=$(find * -maxdepth 0 -type c)
pipes=$(find * -maxdepth 0 -type p)
sockets=$(find * -maxdepth 0 -type s)

echo -e "-------------------------------------------\ndirs : \n$dircs \n-------------------------------------------"
echo -e "files : \n$regs \n-------------------------------------------"
echo -e "symbolic links : \n$syms \n-------------------------------------------"
echo -e "block devices : \n$blocks \n-------------------------------------------"
echo -e "character devices : \n$chars \n-------------------------------------------"
echo -e "pipes : \n$pipes \n-------------------------------------------"
echo -e "sockets : \n$sockets \n-------------------------------------------"