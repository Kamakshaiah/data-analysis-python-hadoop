A = LOAD 'evalin.txt' USING PigStorage(',') AS (a1:int,a2:chararray,a3:chararray) ;
Result = FILTER A BY a1 IN (2, 4);  
DUMP Result;    
