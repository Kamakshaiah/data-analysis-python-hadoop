class Mapper(api.Mapper):

    def map(self, context):
        for w in context.value.split():
            context.emit(w, 1)
class Reducer(api.Reducer):

    def reduce(self, context):
        context.emit(context.key, sum(context.values))
# run
# pydoop script script.py hdfs_input hdfs_output
