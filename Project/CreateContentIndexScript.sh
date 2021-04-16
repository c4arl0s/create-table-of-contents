touch README.md
repositoryName=$2
processedRepositoryName=`echo $repositoryName | tr '[A-Z]' '[a-z]'`
echo "# [go back to Overview]()" > README.md
echo "" > README.md
echo "# [$repositoryName - Content]()" > README.md
insertionNumber=`cat README.md | wc -l`
insertionValue = `expr $insertionNumber + 1`
numberOfLines=`cat $1 | wc -l`
number=`expr $numberOfLines`
echo "Number of Lines = $number"
index=0
cat $1 | while read line
do 
    let index=$index+1
    enumeratedLine=`echo "$index. [$line]()"`  
    # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
    processedLine=`echo $line | tr ' ' '-' | tr '[A-Z]' '[a-z]'| tr '.' '-' | tr -d '\47'`
    titleLine=`echo $enumeratedLine | sed "s/]()/]($processedLine)/"`
    linkLine=`echo $titleLine | sed "s/^/# /"`
    masterLine=`echo "#$enumeratedLine" | tr ' ' '-' | tr -d '.' | tr -d ']()' | tr -d '['`
    echo "original Line: $line"
    echo "enumerated line: $enumeratedLine"
    echo "processed line: $processedLine"
    echo "title line: $titleLine"
    echo "link line: $linkLine"
    echo "master link: $masterLine"
    enumeratedLinePlusLink=`echo $enumeratedLine | sed "s/]()/](https:\/\/github.com\/c4arl0s\/$processedRepositoryName$masterLine)/"`
    echo "enumerated line plus link: $enumeratedLinePlusLink"
    echo "$insertionValue"
    sed -i "$insertValue i $enumeratedLinePlusLink" README.md
    echo "==="
    
done


# cat $1 | while read line
# do 
#     echo "creating content index"
#     # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
#     processedLine=`echo $line | tr ' ' '-' | tr '[A-Z]' '[a-z]'| tr '.' '-' | tr -d '\47'`
#     echo "$processedLine"
# done