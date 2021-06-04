### Create content index Script

This script was born by necessity to create a content index for my projects. It creates the correct link to each topic, according to markdown syntax.

### how to use it ?

Create a content index txt file with your favorite editor like Content.txt

```txt
Topic 1
Topic 2
Topic 3
```

Then, execute the script passing the correct arguments:

```console
$ ./CreateContentIndexScript.sh Content.txt "Repository's name"
```

It will generate a README.md file with the correct index of your project. For now you have to modify the base url of your github account.

```bash
baseLink=`echo "https://github.com/c4arl0s/"`
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
    ## finalLine = enumeratedLine + (baseLink+processedRNWS+masterLine)
    enumeratedLine=`echo "$index. [ ] [$index. $line]"`
    masterLine=`echo "#$index-$line" | tr ' ' '-' | tr -d '.'| tr -d ']()'  | tr -d '[' | tr -d ':' | tr -d '\47' | tr -d '>' | tr -d ',' | tr -d '/' | tr -d '\46' | tr -d '$' | tr -d ';' | tr -d '|' | tr -d '\302' | tr -d '\251' | tr -d '\303' | tr -d '\140' | tr -d '’' | tr -d '?' | tr -d '!'| tr -d '%' | tr -d '@'`
    finalLine=`echo "$enumeratedLine($baseLink$processedRNWS$masterLine)"`
    # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
    echo $finalLine
    echo "$finalLine" >> README.md
done
echo "" >> README.md
echo "# [$repositoryName](https://github.com/c4arl0s/$processedRNWS#$processedRepositoryName---content)" >> README.md
echo "" >> README.md
cat $1 | while read line
do 
    let index=$index+1
    enumeratedLine=`echo "# $index. [$line](https://github.com/c4arl0s/$processedRNWS#$processedRepositoryName---content)"` 
    echo "$enumeratedLine"
    echo "$enumeratedLine" >> README.md
done
```
