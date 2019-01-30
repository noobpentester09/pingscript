echo "Welcome to pingscript"
echo "Use this tool to automate ping process"
echo "This is a basic tool and is yet to be fully functional"
if ["$1" == ""]
then
echo "------------------------------------------------------------"
 echo "Usage ./pingscript.sh [ipadress]"
echo "Example ./pingscript.sh 192.168.1"
else
for x in `seq 1 254`;
do
ping  -b -c 1 $1.$x  | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'
done
fi
