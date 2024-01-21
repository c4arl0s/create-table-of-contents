# Create Table of Contents Script

This script was born by necessity to create a Table of Contents for my projects. It creates the correct link to each topic, according to markdown syntax it also creates an issue on github using `gh` command line tool.

# Dependencies

```console
brew install gh
```

# how to use it ?

You just have to pass as parameter to the script the name of the txt file where is contained all your content, for example: `content.txt`. So,

```console
$ ./create-table-of-contents content.txt
```

After executing the script, It will create a `README.md` file with this code:

```txt
# [go back to Overview](https://github.com/c4arl0s)

# [CreateContentIndex - Content](https://github.com/c4arl0s/createcontentindex#go-back-to-overview)

1. [ ] [1. Formats for Encoding Data](https://github.com/c4arl0s/createcontentindex#1-Formats-for-Encoding-Data)
2. [ ] [2. Surprice!](https://github.com/c4arl0s/createcontentindex#2-Surprice)
3. [ ] [3. Language-Specific Formats](https://github.com/c4arl0s/createcontentindex#3-Language-Specific-Formats)
4. [ ] [4. JSON, XML, and Binary Variants](https://github.com/c4arl0s/createcontentindex#4-JSON-XML-and-Binary-Variants)
5. [ ] [5. $500 dolar prize](https://github.com/c4arl0s/createcontentindex#5-500-dolar-prize)
6. [ ] [6. What is the percentage?: 100%](https://github.com/c4arl0s/createcontentindex#6-What-is-the-percentage-100)
7. [ ] [7. Binary encoding](https://github.com/c4arl0s/createcontentindex#7-Binary-encoding)
8. [ ] [8. Thrift and Protocol Buffers](https://github.com/c4arl0s/createcontentindex#8-Thrift-and-Protocol-Buffers)
9. [ ] [9. Field tags and schema evolution](https://github.com/c4arl0s/createcontentindex#9-Field-tags-and-schema-evolution)
10. [ ] [10. Datatypes and schema evolution](https://github.com/c4arl0s/createcontentindex#10-Datatypes-and-schema-evolution)
11. [ ] [11. Avro](https://github.com/c4arl0s/createcontentindex#11-Avro)
12. [ ] [12. The writer’s schema and the reader’s schema](https://github.com/c4arl0s/createcontentindex#12-The-writers-schema-and-the-readers-schema)
13. [ ] [13. Schema evolution rules](https://github.com/c4arl0s/createcontentindex#13-Schema-evolution-rules)
14. [ ] [14. But what is the writer’s schema?](https://github.com/c4arl0s/createcontentindex#14-But-what-is-the-writers-schema)
15. [ ] [15. Dynamically generated schemas](https://github.com/c4arl0s/createcontentindex#15-Dynamically-generated-schemas)
16. [ ] [16. Code generation and dynamically typed languages](https://github.com/c4arl0s/createcontentindex#16-Code-generation-and-dynamically-typed-languages)
17. [ ] [17. The Merits of Schemas](https://github.com/c4arl0s/createcontentindex#17-The-Merits-of-Schemas)
18. [ ] [18. Modes of Dataflow](https://github.com/c4arl0s/createcontentindex#18-Modes-of-Dataflow)
19. [ ] [19. Dataflow Through Databases](https://github.com/c4arl0s/createcontentindex#19-Dataflow-Through-Databases)
20. [ ] [20. Different values written at different times](https://github.com/c4arl0s/createcontentindex#20-Different-values-written-at-different-times)
21. [ ] [21. Archival storage](https://github.com/c4arl0s/createcontentindex#21-Archival-storage)
22. [ ] [22. Dataflow Through Services: REST and RPC](https://github.com/c4arl0s/createcontentindex#22-Dataflow-Through-Services-REST-and-RPC)
23. [ ] [23. Web services](https://github.com/c4arl0s/createcontentindex#23-Web-services)
24. [ ] [24. The problems with remote procedure calls (RPCs)](https://github.com/c4arl0s/createcontentindex#24-The-problems-with-remote-procedure-calls-RPCs)
25. [ ] [25. Current directions for RPC](https://github.com/c4arl0s/createcontentindex#25-Current-directions-for-RPC)
26. [ ] [26. Data encoding and evolution for RPC](https://github.com/c4arl0s/createcontentindex#26-Data-encoding-and-evolution-for-RPC)
27. [ ] [27. Message-Passing Dataflow](https://github.com/c4arl0s/createcontentindex#27-Message-Passing-Dataflow)
28. [ ] [28. Message brokers](https://github.com/c4arl0s/createcontentindex#28-Message-brokers)
29. [ ] [29. Distributed actor frameworks](https://github.com/c4arl0s/createcontentindex#29-Distributed-actor-frameworks)
30. [ ] [30. Summary](https://github.com/c4arl0s/createcontentindex#30-Summary)
31. [ ] [31. This is a test for @testable](https://github.com/c4arl0s/createcontentindex#31-This-is-a-test-for-testable)

# [CreateContentIndex](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)

# 1. [Formats for Encoding Data](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 2. [Surprice!](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 3. [Language-Specific Formats](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 4. [JSON, XML, and Binary Variants](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 5. [$500 dolar prize](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 6. [What is the percentage?: 100%](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 7. [Binary encoding](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 8. [Thrift and Protocol Buffers](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 9. [Field tags and schema evolution](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 10. [Datatypes and schema evolution](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 11. [Avro](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 12. [The writer’s schema and the reader’s schema](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 13. [Schema evolution rules](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 14. [But what is the writer’s schema?](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 15. [Dynamically generated schemas](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 16. [Code generation and dynamically typed languages](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 17. [The Merits of Schemas](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 18. [Modes of Dataflow](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 19. [Dataflow Through Databases](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 20. [Different values written at different times](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 21. [Archival storage](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 22. [Dataflow Through Services: REST and RPC](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 23. [Web services](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 24. [The problems with remote procedure calls (RPCs)](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 25. [Current directions for RPC](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 26. [Data encoding and evolution for RPC](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 27. [Message-Passing Dataflow](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 28. [Message brokers](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 29. [Distributed actor frameworks](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 30. [Summary](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 31. [This is a test for @testable](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
```

This is how it looks `content.txt`:

```txt
Formats for Encoding Data
Surprice!
Language-Specific Formats
JSON, XML, and Binary Variants
$500 dolar prize
What is the percentage?: 100%
Binary encoding
Thrift and Protocol Buffers
Field tags and schema evolution
Datatypes and schema evolution
Avro
The writer’s schema and the reader’s schema
Schema evolution rules
But what is the writer’s schema?
Dynamically generated schemas
Code generation and dynamically typed languages
The Merits of Schemas
Modes of Dataflow
Dataflow Through Databases
Different values written at different times
Archival storage
Dataflow Through Services: REST and RPC
Web services
The problems with remote procedure calls (RPCs)
Current directions for RPC
Data encoding and evolution for RPC
Message-Passing Dataflow
Message brokers
Distributed actor frameworks
Summary
This is a test for @testable
This is a test for @testable
```

On GitHub will look like this, now you can navigative on your project.

# [go back to Overview](https://github.com/c4arl0s)

# [CreateContentIndex - Content](https://github.com/c4arl0s/createcontentindex#go-back-to-overview)

1. [ ] [1. Formats for Encoding Data](https://github.com/c4arl0s/createcontentindex#1-Formats-for-Encoding-Data)
2. [ ] [2. Surprice!](https://github.com/c4arl0s/createcontentindex#2-Surprice)
3. [ ] [3. Language-Specific Formats](https://github.com/c4arl0s/createcontentindex#3-Language-Specific-Formats)
4. [ ] [4. JSON, XML, and Binary Variants](https://github.com/c4arl0s/createcontentindex#4-JSON-XML-and-Binary-Variants)
5. [ ] [5. $500 dolar prize](https://github.com/c4arl0s/createcontentindex#5-500-dolar-prize)
6. [ ] [6. What is the percentage?: 100%](https://github.com/c4arl0s/createcontentindex#6-What-is-the-percentage-100)
7. [ ] [7. Binary encoding](https://github.com/c4arl0s/createcontentindex#7-Binary-encoding)
8. [ ] [8. Thrift and Protocol Buffers](https://github.com/c4arl0s/createcontentindex#8-Thrift-and-Protocol-Buffers)
9. [ ] [9. Field tags and schema evolution](https://github.com/c4arl0s/createcontentindex#9-Field-tags-and-schema-evolution)
10. [ ] [10. Datatypes and schema evolution](https://github.com/c4arl0s/createcontentindex#10-Datatypes-and-schema-evolution)
11. [ ] [11. Avro](https://github.com/c4arl0s/createcontentindex#11-Avro)
12. [ ] [12. The writer’s schema and the reader’s schema](https://github.com/c4arl0s/createcontentindex#12-The-writers-schema-and-the-readers-schema)
13. [ ] [13. Schema evolution rules](https://github.com/c4arl0s/createcontentindex#13-Schema-evolution-rules)
14. [ ] [14. But what is the writer’s schema?](https://github.com/c4arl0s/createcontentindex#14-But-what-is-the-writers-schema)
15. [ ] [15. Dynamically generated schemas](https://github.com/c4arl0s/createcontentindex#15-Dynamically-generated-schemas)
16. [ ] [16. Code generation and dynamically typed languages](https://github.com/c4arl0s/createcontentindex#16-Code-generation-and-dynamically-typed-languages)
17. [ ] [17. The Merits of Schemas](https://github.com/c4arl0s/createcontentindex#17-The-Merits-of-Schemas)
18. [ ] [18. Modes of Dataflow](https://github.com/c4arl0s/createcontentindex#18-Modes-of-Dataflow)
19. [ ] [19. Dataflow Through Databases](https://github.com/c4arl0s/createcontentindex#19-Dataflow-Through-Databases)
20. [ ] [20. Different values written at different times](https://github.com/c4arl0s/createcontentindex#20-Different-values-written-at-different-times)
21. [ ] [21. Archival storage](https://github.com/c4arl0s/createcontentindex#21-Archival-storage)
22. [ ] [22. Dataflow Through Services: REST and RPC](https://github.com/c4arl0s/createcontentindex#22-Dataflow-Through-Services-REST-and-RPC)
23. [ ] [23. Web services](https://github.com/c4arl0s/createcontentindex#23-Web-services)
24. [ ] [24. The problems with remote procedure calls (RPCs)](https://github.com/c4arl0s/createcontentindex#24-The-problems-with-remote-procedure-calls-RPCs)
25. [ ] [25. Current directions for RPC](https://github.com/c4arl0s/createcontentindex#25-Current-directions-for-RPC)
26. [ ] [26. Data encoding and evolution for RPC](https://github.com/c4arl0s/createcontentindex#26-Data-encoding-and-evolution-for-RPC)
27. [ ] [27. Message-Passing Dataflow](https://github.com/c4arl0s/createcontentindex#27-Message-Passing-Dataflow)
28. [ ] [28. Message brokers](https://github.com/c4arl0s/createcontentindex#28-Message-brokers)
29. [ ] [29. Distributed actor frameworks](https://github.com/c4arl0s/createcontentindex#29-Distributed-actor-frameworks)
30. [ ] [30. Summary](https://github.com/c4arl0s/createcontentindex#30-Summary)
31. [ ] [31. This is a test for @testable](https://github.com/c4arl0s/createcontentindex#31-This-is-a-test-for-testable)

# [CreateContentIndex](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)

# 1. [Formats for Encoding Data](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 2. [Surprice!](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 3. [Language-Specific Formats](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 4. [JSON, XML, and Binary Variants](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 5. [$500 dolar prize](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 6. [What is the percentage?: 100%](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 7. [Binary encoding](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 8. [Thrift and Protocol Buffers](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 9. [Field tags and schema evolution](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 10. [Datatypes and schema evolution](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 11. [Avro](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 12. [The writer’s schema and the reader’s schema](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 13. [Schema evolution rules](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 14. [But what is the writer’s schema?](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 15. [Dynamically generated schemas](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 16. [Code generation and dynamically typed languages](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 17. [The Merits of Schemas](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 18. [Modes of Dataflow](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 19. [Dataflow Through Databases](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 20. [Different values written at different times](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 21. [Archival storage](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 22. [Dataflow Through Services: REST and RPC](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 23. [Web services](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 24. [The problems with remote procedure calls (RPCs)](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 25. [Current directions for RPC](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 26. [Data encoding and evolution for RPC](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 27. [Message-Passing Dataflow](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 28. [Message brokers](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 29. [Distributed actor frameworks](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 30. [Summary](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)
# 31. [This is a test for @testable](https://github.com/c4arl0s/createcontentindex#createcontentindex---content)

# Code

```bash
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
cat $1 | while read line; do 
  let index=${index}+1
  enumerated_line=$(echo "${index}. [ ] [${index}. ${line}]")
  master_line=$(echo "#${index}-${line}" | tr ' ' '-' | tr -d '.'| tr -d ']()'  | tr -d '[' | tr -d ':' | tr -d '\47' | tr -d '>' | tr -d ',' | tr -d '/' | tr -d '\46' | tr -d '$' | tr -d ';' | tr -d '|' | tr -d '\302' | tr -d '\251' | tr -d '\303' | tr -d '\140' | tr -d '’' | tr -d '?' | tr -d '!'| tr -d '%' | tr -d '@')
  final_line=$(echo "${enumerated_line}(${user_url}/${processed_rnws}${master_line})")
  # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
  echo ${final_line}
  echo "${final_line}" >> README.md
  gh issue create --title "${index} ${line}" --body "${index} ${line}"
done
echo "" >> README.md
echo "# [${repository_name}](${user_url}/${processed_rnws}#${processed_repository_name}---content)" >> README.md
echo "" >> README.md
index=0
cat $1 | while read line; do
  let index=${index}+1
  enumerated_line=$(echo "# ${index}. [${line}](${user_url}/${processed_rnws}#${processed_repository_name}---content)")
  echo "${enumerated_line}"
  echo "${enumerated_line}" >> README.md
done
```
