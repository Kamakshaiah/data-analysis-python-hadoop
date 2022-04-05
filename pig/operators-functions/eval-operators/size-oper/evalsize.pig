A = LOAD 'evalsize.txt' USING PigStorage(',') AS (a1:chararray,a2:chararray) ;
Result = FOREACH A GENERATE SIZE(a1);  
DUMP Result;    
