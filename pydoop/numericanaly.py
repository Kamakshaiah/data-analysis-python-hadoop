def mapper(_, text, writer):
	sum = 0
    	for number in text.split('\n'):
    		sum = sum + number
    		writer.emit('the sum is: ', sum)

# run
# pydoop script script.py hdfs_input hdfs_output
