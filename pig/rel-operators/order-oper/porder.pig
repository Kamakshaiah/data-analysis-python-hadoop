A = LOAD 'porder.txt' USING PigStorage(',') AS (a1:int,a2:int,a3:int) ;
DUMP A;  
--Result = ORDER A BY a1 DESC;  
Result = ORDER A BY a1;  
DUMP Result;    
