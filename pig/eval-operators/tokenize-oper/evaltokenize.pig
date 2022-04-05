A = LOAD 'evaltokenize.txt' USING PigStorage() AS (a1:chararray);
Result = FOREACH A GENERATE TOKENIZE(a1);    
DUMP Result; 
