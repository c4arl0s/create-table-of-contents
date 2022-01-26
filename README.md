### Create content index Script

This script was born by necessity to create a content index for my projects. It creates the correct link to each topic, according to markdown syntax.

### how to use it ?

You just have to pass as parameter to the script the name of the directory where is contained all you content index, for example: `Content.txt`. So,

Console output:

```console
$ ./CreateContentIndexScript Content.txt
```

This is how it looks `Content.txt`:

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

After executing the script, It will create a README.md file with this code::

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
