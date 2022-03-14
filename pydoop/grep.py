def mapper(_, text, writer, conf):
    if text.find(conf['grep-expression']) >= 0:
        writer.emit("", text)
        
# pydoop script --num-reducers 0 -t '' -D grep-expression=hello \
#  grep.py hdfs_input hdfs_output
