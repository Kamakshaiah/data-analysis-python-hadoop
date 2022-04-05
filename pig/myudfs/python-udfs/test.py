#from pig_util import outputSchema

@outputSchema("num:float")
def square(num):
    if num == None:
        return None
    return num * num

@outputSchema("word:chararray")
def concat(word):
    return word + '-' + word
