### Create content index Script

This script was born by necessity to create a content index for my projects. It creates the correct link to each topic, according to markdown syntax.

### how to use it ?

First, you have to modify the CreateContentIndexScript.sh file to match your own url GitHub account, for example mine is:

```html
https://github.com/c4arl0s
```

Find baseLink variable and replace it with yours:

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

Second, Create a repository on GitHub, for example, for this repository was:  "Create Content Index Script", then you can get a link to clone it on your mac.

```html
https://github.com/c4arl0s/CreateContentIndexScript.git
```

Third, you create a content index text file with your favorite editor, you can name it: Content.txt

```txt
Casting Pointers
Accessing a Special Purpose Address
Accessing a Port
Accessing Memory using DMA
Determining the Endianness of a Machine
Aliasing, Strict Aliasing, and the restrict Keyword
Using a Union to Represent a Value in Multiple Ways
Strict Aliasing
Using the restrict Keyword
Threads and Pointers
Sharing Pointers Between Threads
Using Function Pointers to Support Callbacks
Object-Oriented Techniques
Creating and Using an Opaque Pointer
Polymorphism in C
Summary
```

Fourth, then inside your repository's directory, execute the script passing the correct arguments:

Argument 1: text file, in this case its name is Content.txt
Argument 2: The exact name of your repository, in this case would be: "Create Content Index Script"

Then, execute the script.

```console
$ ./CreateContentIndexScript.sh Content.txt "8 Odds And Ends"
```

It will generate a README.md file with this code::

```txt
# [go back to Overview](https://github.com/c4arl0s)

# [Create Content Index Script - Content](https://github.com/c4arl0s/createcontentindexscript#go-back-to-overview)

1. [ ] [1. Casting Pointers](https://github.com/c4arl0s/createcontentindexscript#1-Casting-Pointers)
2. [ ] [2. Accessing a Special Purpose Address](https://github.com/c4arl0s/createcontentindexscript#2-Accessing-a-Special-Purpose-Address)
3. [ ] [3. Accessing a Port](https://github.com/c4arl0s/createcontentindexscript#3-Accessing-a-Port)
4. [ ] [4. Accessing Memory using DMA](https://github.com/c4arl0s/createcontentindexscript#4-Accessing-Memory-using-DMA)
5. [ ] [5. Determining the Endianness of a Machine](https://github.com/c4arl0s/createcontentindexscript#5-Determining-the-Endianness-of-a-Machine)
6. [ ] [6. Aliasing, Strict Aliasing, and the restrict Keyword](https://github.com/c4arl0s/createcontentindexscript#6-Aliasing-Strict-Aliasing-and-the-restrict-Keyword)
7. [ ] [7. Using a Union to Represent a Value in Multiple Ways](https://github.com/c4arl0s/createcontentindexscript#7-Using-a-Union-to-Represent-a-Value-in-Multiple-Ways)
8. [ ] [8. Strict Aliasing](https://github.com/c4arl0s/createcontentindexscript#8-Strict-Aliasing)
9. [ ] [9. Using the restrict Keyword](https://github.com/c4arl0s/createcontentindexscript#9-Using-the-restrict-Keyword)
10. [ ] [10. Threads and Pointers](https://github.com/c4arl0s/createcontentindexscript#10-Threads-and-Pointers)
11. [ ] [11. Sharing Pointers Between Threads](https://github.com/c4arl0s/createcontentindexscript#11-Sharing-Pointers-Between-Threads)
12. [ ] [12. Using Function Pointers to Support Callbacks](https://github.com/c4arl0s/createcontentindexscript#12-Using-Function-Pointers-to-Support-Callbacks)
13. [ ] [13. Object-Oriented Techniques](https://github.com/c4arl0s/createcontentindexscript#13-Object-Oriented-Techniques)
14. [ ] [14. Creating and Using an Opaque Pointer](https://github.com/c4arl0s/createcontentindexscript#14-Creating-and-Using-an-Opaque-Pointer)
15. [ ] [15. Polymorphism in C](https://github.com/c4arl0s/createcontentindexscript#15-Polymorphism-in-C)
16. [ ] [16. Summary](https://github.com/c4arl0s/createcontentindexscript#16-Summary)

# [Create Content Index Script](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)

# 1. [Casting Pointers](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 2. [Accessing a Special Purpose Address](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 3. [Accessing a Port](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 4. [Accessing Memory using DMA](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 5. [Determining the Endianness of a Machine](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 6. [Aliasing, Strict Aliasing, and the restrict Keyword](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 7. [Using a Union to Represent a Value in Multiple Ways](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 8. [Strict Aliasing](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 9. [Using the restrict Keyword](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 10. [Threads and Pointers](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 11. [Sharing Pointers Between Threads](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 12. [Using Function Pointers to Support Callbacks](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 13. [Object-Oriented Techniques](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 14. [Creating and Using an Opaque Pointer](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 15. [Polymorphism in C](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 16. [Summary](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
```

On GitHub will look like this, now you can navigative on your project.

# [go back to Overview](https://github.com/c4arl0s)

# [Create Content Index Script - Content](https://github.com/c4arl0s/createcontentindexscript#go-back-to-overview)

1. [ ] [1. Casting Pointers](https://github.com/c4arl0s/createcontentindexscript#1-Casting-Pointers)
2. [ ] [2. Accessing a Special Purpose Address](https://github.com/c4arl0s/createcontentindexscript#2-Accessing-a-Special-Purpose-Address)
3. [ ] [3. Accessing a Port](https://github.com/c4arl0s/createcontentindexscript#3-Accessing-a-Port)
4. [ ] [4. Accessing Memory using DMA](https://github.com/c4arl0s/createcontentindexscript#4-Accessing-Memory-using-DMA)
5. [ ] [5. Determining the Endianness of a Machine](https://github.com/c4arl0s/createcontentindexscript#5-Determining-the-Endianness-of-a-Machine)
6. [ ] [6. Aliasing, Strict Aliasing, and the restrict Keyword](https://github.com/c4arl0s/createcontentindexscript#6-Aliasing-Strict-Aliasing-and-the-restrict-Keyword)
7. [ ] [7. Using a Union to Represent a Value in Multiple Ways](https://github.com/c4arl0s/createcontentindexscript#7-Using-a-Union-to-Represent-a-Value-in-Multiple-Ways)
8. [ ] [8. Strict Aliasing](https://github.com/c4arl0s/createcontentindexscript#8-Strict-Aliasing)
9. [ ] [9. Using the restrict Keyword](https://github.com/c4arl0s/createcontentindexscript#9-Using-the-restrict-Keyword)
10. [ ] [10. Threads and Pointers](https://github.com/c4arl0s/createcontentindexscript#10-Threads-and-Pointers)
11. [ ] [11. Sharing Pointers Between Threads](https://github.com/c4arl0s/createcontentindexscript#11-Sharing-Pointers-Between-Threads)
12. [ ] [12. Using Function Pointers to Support Callbacks](https://github.com/c4arl0s/createcontentindexscript#12-Using-Function-Pointers-to-Support-Callbacks)
13. [ ] [13. Object-Oriented Techniques](https://github.com/c4arl0s/createcontentindexscript#13-Object-Oriented-Techniques)
14. [ ] [14. Creating and Using an Opaque Pointer](https://github.com/c4arl0s/createcontentindexscript#14-Creating-and-Using-an-Opaque-Pointer)
15. [ ] [15. Polymorphism in C](https://github.com/c4arl0s/createcontentindexscript#15-Polymorphism-in-C)
16. [ ] [16. Summary](https://github.com/c4arl0s/createcontentindexscript#16-Summary)

# [Create Content Index Script](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)

# 1. [Casting Pointers](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 2. [Accessing a Special Purpose Address](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 3. [Accessing a Port](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 4. [Accessing Memory using DMA](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 5. [Determining the Endianness of a Machine](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 6. [Aliasing, Strict Aliasing, and the restrict Keyword](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 7. [Using a Union to Represent a Value in Multiple Ways](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 8. [Strict Aliasing](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 9. [Using the restrict Keyword](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 10. [Threads and Pointers](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 11. [Sharing Pointers Between Threads](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 12. [Using Function Pointers to Support Callbacks](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 13. [Object-Oriented Techniques](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 14. [Creating and Using an Opaque Pointer](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 15. [Polymorphism in C](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 16. [Summary](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
