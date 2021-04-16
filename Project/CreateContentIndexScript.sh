cat $1 | while read line
do 
    echo "creating content index"
    # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
    processedLine=`echo $line | tr ' ' '-' | tr '[A-Z]' '[a-z]'| tr '.' '-' | tr -d '\47'`
    echo "$processedLine"
done