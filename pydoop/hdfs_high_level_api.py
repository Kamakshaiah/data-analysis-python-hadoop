import pydoop.hdfs as hdfs
hdfs.mkdir('test')
hdfs.dump('hello, world', 'test/hello.txt')
hdfs.load('test/hello.txt')

hdfs.load('test/hello.txt', mode='rt')
[hdfs.path.basename(_) for _ in hdfs.ls('test')]

hdfs.stat('test/hello.txt').st_size

hdfs.path.isdir('test')

hdfs.path.isfile('test')
hdfs.path.basename('test/hello.txt')

hdfs.cp('test', 'test.copy')
[hdfs.path.basename(_) for _ in hdfs.ls('test.copy')]

hdfs.get('test/hello.txt', '/tmp/hello.txt')
with open('/tmp/hello.txt') as f:
    f.read()
    
hdfs.put('/tmp/hello.txt', 'test.copy/hello.txt.copy')
for x in sorted(hdfs.ls('test.copy')): print(repr(hdfs.path.basename(x)))
with hdfs.open('test/hello.txt', 'r') as fi:
    fi.read(3)

with hdfs.open('test/hello.txt', 'rt') as fi:
    fi.read(3)
