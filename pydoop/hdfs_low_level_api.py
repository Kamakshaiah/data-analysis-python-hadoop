import pydoop.hdfs as hdfs
from common import MB, TEST_ROOT


def usage_by_bs(fs, root):
    stats = {}
    for info in fs.walk(root):
        if info['kind'] == 'directory':
            continue
        bs = int(info['block_size'])
        size = int(info['size'])
        stats[bs] = stats.get(bs, 0) + size
    return stats


if __name__ == "__main__":
    with hdfs.hdfs() as fs:
        root = "%s/%s" % (fs.working_directory(), TEST_ROOT)
        print("BS(MB)\tBYTES")
        for k, v in usage_by_bs(fs, root).items():
            print("%.1f\t%d" % (k / float(MB), v))
#run
# pydoop submit --upload-file-to-cache wc.py wc input output
