#!/bin/bash

user_name=$(git config --list | grep user.name | cut -f 2 -d "=")
user_url=$(echo "https://github.com/${user_name}")
repository_name=$(pwd | rev | cut -d '/' -f 1 | rev)
processed_repository_name=$(echo ${repository_name} | tr '[A-Z]' '[a-z]' | tr ' ' '-')
processed_rnws=$(echo ${repository_name} | tr '[A-Z]' '[a-z]' | tr -d ' ')
echo "# [go back to Overview](${user_name})" > README.md
echo "" >> README.md
echo "# [${repository_name} - Content](${user_url}/${processed_rnws}#go-back-to-overview)" >> README.md
echo "" >> README.md
index=0
cat $1 | while read line
do 
    let index=${index}+1
    ENUMERATED_LINE=`echo "${index}. [ ] [${index}. ${line}]"`
    MASTER_LINE=`echo "#${index}-${line}" | tr ' ' '-' | tr -d '.'| tr -d ']()'  | tr -d '[' | tr -d ':' | tr -d '\47' | tr -d '>' | tr -d ',' | tr -d '/' | tr -d '\46' | tr -d '$' | tr -d ';' | tr -d '|' | tr -d '\302' | tr -d '\251' | tr -d '\303' | tr -d '\140' | tr -d '’' | tr -d '?' | tr -d '!'| tr -d '%' | tr -d '@'`
    FINAL_LINE=`echo "$ENUMERATED_LINE(${user_url}/${processed_rnws}$MASTER_LINE)"`
    # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
    echo $FINAL_LINE
    echo "$FINAL_LINE" >> README.md
    gh issue create --title "${index} ${line}" --body "${index} ${line}"
done
echo "" >> README.md
echo "# [${repository_name}](${user_url}/${processed_rnws}#${processed_repository_name}---content)" >> README.md
echo "" >> README.md
index=0
cat $1 | while read line
do 
    let index=${index}+1
    ENUMERATED_LINE=`echo "# ${index}. [${line}](${user_url}/${processed_rnws}#${processed_repository_name}---content)"` 
    echo "$ENUMERATED_LINE"
    echo "$ENUMERATED_LINE" >> README.md
done
