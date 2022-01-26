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

After executing the script, It will create a README.md file with this code::

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
