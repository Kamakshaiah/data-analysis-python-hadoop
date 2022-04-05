A = LOAD 'evalcount.txt' USING PigStorage(',') AS (a1:chararray,a2:chararray,a3:float) ;  
B = GROUP A BY a1;   
Result = FOREACH B GENERATE COUNT(A);  
DUMP Result;  
