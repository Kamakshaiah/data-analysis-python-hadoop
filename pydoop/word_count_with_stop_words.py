STOP_WORDS_FN = 'stop_words.txt'

try:
    with open(STOP_WORDS_FN) as f:
        STOP_WORDS = frozenset(l.strip() for l in f if not l.isspace())
except OSError:
    STOP_WORDS = frozenset()


def mapper(_, value, writer):
    for word in value.split():
        if word in STOP_WORDS:
            writer.count("STOP_WORDS", 1)
        else:
            writer.emit(word, 1)


def reducer(word, icounts, writer):
    writer.emit(word, sum(icounts))

# run
# pydoop script wc.py hdfs_input hdfs_output --upload-file-to-cache stop_words.txt
