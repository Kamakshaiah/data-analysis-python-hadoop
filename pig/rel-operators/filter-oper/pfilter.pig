A = LOAD 'pfilter.txt' USING PigStorage(',') AS (a1:int,a2:int);  
Result = FILTER A BY a2==8;  
DUMP Result;  
