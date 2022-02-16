def mapper(_, text, writer):
    for word in text.split():
        writer.emit(word, 1)


def reducer(word, icounts, writer):
    writer.emit(word, sum(icounts))
