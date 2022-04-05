A = LOAD 'evalconcat.txt' USING PigStorage(',') AS (a1:chararray,a2:chararray);
Result = FOREACH A GENERATE CONCAT (a1,'_',a2);     
DUMP Result;  
