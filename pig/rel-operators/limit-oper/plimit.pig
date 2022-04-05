A = LOAD 'plimit.txt' USING PigStorage(',') AS (a1:int,a2:int,a3:int);
DUMP A;  
Result = LIMIT A 2;  
DUMP Result;    
