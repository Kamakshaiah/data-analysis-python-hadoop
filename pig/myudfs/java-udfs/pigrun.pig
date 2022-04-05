-- myscript.pig
REGISTER myudfs.jar;
A = LOAD 'names.csv' using PigStorage(',') AS (name: chararray);
B = FOREACH A GENERATE UPPER(name);
DUMP B;

