def mapper(_, record, writer):
    writer.emit("", record.lower())

# pydoop script --num-reducers 0 -t '' lowercase.py hdfs_input hdfs_output
