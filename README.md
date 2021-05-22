# [go back to Overview](https://github.com/c4arl0s)

# [Create Content index Script - Content](https://github.com/c4arl0s/createcontentindexscript#go-back-to-overview)

1. [ ] [1. Formats for Encoding Data](https://github.com/c4arl0s/createcontentindexscript#1-Formats-for-Encoding-Data)
2. [ ] [2. Surprice!](https://github.com/c4arl0s/createcontentindexscript#2-Surprice)
3. [ ] [3. Language-Specific Formats](https://github.com/c4arl0s/createcontentindexscript#3-Language-Specific-Formats)
4. [ ] [4. JSON, XML, and Binary Variants](https://github.com/c4arl0s/createcontentindexscript#4-JSON-XML-and-Binary-Variants)
5. [ ] [5. $500 dolar prize](https://github.com/c4arl0s/createcontentindexscript#5-500-dolar-prize)
6. [ ] [6. What is the percentage?: 100%](https://github.com/c4arl0s/createcontentindexscript#6-What-is-the-percentage-100)
7. [ ] [7. Binary encoding](https://github.com/c4arl0s/createcontentindexscript#7-Binary-encoding)
8. [ ] [8. Thrift and Protocol Buffers](https://github.com/c4arl0s/createcontentindexscript#8-Thrift-and-Protocol-Buffers)
9. [ ] [9. Field tags and schema evolution](https://github.com/c4arl0s/createcontentindexscript#9-Field-tags-and-schema-evolution)
10. [ ] [10. Datatypes and schema evolution](https://github.com/c4arl0s/createcontentindexscript#10-Datatypes-and-schema-evolution)
11. [ ] [11. Avro](https://github.com/c4arl0s/createcontentindexscript#11-Avro)
12. [ ] [12. The writer’s schema and the reader’s schema](https://github.com/c4arl0s/createcontentindexscript#12-The-writers-schema-and-the-readers-schema)
13. [ ] [13. Schema evolution rules](https://github.com/c4arl0s/createcontentindexscript#13-Schema-evolution-rules)
14. [ ] [14. But what is the writer’s schema?](https://github.com/c4arl0s/createcontentindexscript#14-But-what-is-the-writers-schema)
15. [ ] [15. Dynamically generated schemas](https://github.com/c4arl0s/createcontentindexscript#15-Dynamically-generated-schemas)
16. [ ] [16. Code generation and dynamically typed languages](https://github.com/c4arl0s/createcontentindexscript#16-Code-generation-and-dynamically-typed-languages)
17. [ ] [17. The Merits of Schemas](https://github.com/c4arl0s/createcontentindexscript#17-The-Merits-of-Schemas)
18. [ ] [18. Modes of Dataflow](https://github.com/c4arl0s/createcontentindexscript#18-Modes-of-Dataflow)
19. [ ] [19. Dataflow Through Databases](https://github.com/c4arl0s/createcontentindexscript#19-Dataflow-Through-Databases)
20. [ ] [20. Different values written at different times](https://github.com/c4arl0s/createcontentindexscript#20-Different-values-written-at-different-times)
21. [ ] [21. Archival storage](https://github.com/c4arl0s/createcontentindexscript#21-Archival-storage)
22. [ ] [22. Dataflow Through Services: REST and RPC](https://github.com/c4arl0s/createcontentindexscript#22-Dataflow-Through-Services-REST-and-RPC)
23. [ ] [23. Web services](https://github.com/c4arl0s/createcontentindexscript#23-Web-services)
24. [ ] [24. The problems with remote procedure calls (RPCs)](https://github.com/c4arl0s/createcontentindexscript#24-The-problems-with-remote-procedure-calls-RPCs)
25. [ ] [25. Current directions for RPC](https://github.com/c4arl0s/createcontentindexscript#25-Current-directions-for-RPC)
26. [ ] [26. Data encoding and evolution for RPC](https://github.com/c4arl0s/createcontentindexscript#26-Data-encoding-and-evolution-for-RPC)
27. [ ] [27. Message-Passing Dataflow](https://github.com/c4arl0s/createcontentindexscript#27-Message-Passing-Dataflow)
28. [ ] [28. Message brokers](https://github.com/c4arl0s/createcontentindexscript#28-Message-brokers)
29. [ ] [29. Distributed actor frameworks](https://github.com/c4arl0s/createcontentindexscript#29-Distributed-actor-frameworks)
30. [ ] [30. Summary](https://github.com/c4arl0s/createcontentindexscript#30-Summary)
31. [ ] [31. This is a test for @testable](https://github.com/c4arl0s/createcontentindexscript#31-This-is-a-test-for-testable)

# [Create Content index Script](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)

# 1. [Formats for Encoding Data](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 2. [Surprice!](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 3. [Language-Specific Formats](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 4. [JSON, XML, and Binary Variants](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 5. [$500 dolar prize](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 6. [What is the percentage?: 100%](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 7. [Binary encoding](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 8. [Thrift and Protocol Buffers](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 9. [Field tags and schema evolution](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 10. [Datatypes and schema evolution](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 11. [Avro](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 12. [The writer’s schema and the reader’s schema](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 13. [Schema evolution rules](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 14. [But what is the writer’s schema?](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 15. [Dynamically generated schemas](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 16. [Code generation and dynamically typed languages](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 17. [The Merits of Schemas](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 18. [Modes of Dataflow](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 19. [Dataflow Through Databases](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 20. [Different values written at different times](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 21. [Archival storage](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 22. [Dataflow Through Services: REST and RPC](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 23. [Web services](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 24. [The problems with remote procedure calls (RPCs)](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 25. [Current directions for RPC](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 26. [Data encoding and evolution for RPC](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 27. [Message-Passing Dataflow](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 28. [Message brokers](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 29. [Distributed actor frameworks](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 30. [Summary](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
# 31. [This is a test for @testable](https://github.com/c4arl0s/createcontentindexscript#create-content-index-script---content)
