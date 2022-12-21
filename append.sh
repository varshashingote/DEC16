or files in `ls *.log*`
do
        folderName=`echo $files | awk -f. {print $1}'`;
        echo $files;
        echo $folderName;
        printf "\n";
        if [ -d $folderName ]
        then
        rm -r $folderName;
        fi
x=`date +'%Y'`;
mkdir $folderName;
cp $files $folderName/$files$x;
done
 
