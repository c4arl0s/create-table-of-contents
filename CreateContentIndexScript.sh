if test ! -s README.md
then 
    touch README.md
else 
    cp README.md backUpREADME.md
fi
repositoryName=$2
processedRepositoryName=`echo $repositoryName | tr '[A-Z]' '[a-z]' | tr ' ' '-'`
processedRNWS=`echo $repositoryName | tr '[A-Z]' '[a-z]' | tr -d ' '`
echo "# [go back to Overview](https://github.com/c4arl0s)" > README.md
echo "" >> README.md
echo "# [$repositoryName - Content](https://github.com/c4arl0s/$processedRNWS#go-back-to-overview)" >> README.md
echo "" >> README.md
index=0
cat $1 | while read line
do 
    let index=$index+1
    enumeratedLine=`echo "$index. [$line]()"`  
    # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
    processedLine=`echo $line | tr ' ' '-' | tr '[A-Z]' '[a-z]'| tr '.' '-' | tr -d '\47'`
    titleLine=`echo $enumeratedLine | sed "s/]()/]($processedLine)/"`
    linkLine=`echo $titleLine | sed "s/^/# /"`
    masterLine=`echo "#$enumeratedLine" | tr ' ' '-' | tr -d '.' | tr -d ']()' | tr -d '[' | tr -d ':'`
    enumeratedLinePlusLink=`echo $enumeratedLine | sed "s/]()/](https:\/\/github.com\/c4arl0s\/$processedRNWS$masterLine)/"`
    echo $enumeratedLinePlusLink
    echo "$enumeratedLinePlusLink" >> README.md
done
echo "" >> README.md
echo "# [$2](https://github.com/c4arl0s/#$processedRepositoryName---content)" >> README.md
echo "" >> README.md
cat $1 | while read line
do 
    let index=$index+1
    enumeratedLine=`echo "# $index. [$line](https://github.com/c4arl0s/$processedRNWS#$processedRepositoryName---content)"` 
    echo "$enumeratedLine"
    echo "$enumeratedLine" >> README.md
done
