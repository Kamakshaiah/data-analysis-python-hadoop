register 'test.py' using jython as myfuncs;
--register 'test.py' using org.apache.pig.scripting.streaming.python.PythonScriptEngine as myfuncs;
a = load 'studentgrades.csv' using PigStorage(',') as (name:chararray, term:chararray, gpa:float); 
dump a; 
b = foreach a generate myfuncs.concat(name), myfuncs.square(gpa);
dump b; 
