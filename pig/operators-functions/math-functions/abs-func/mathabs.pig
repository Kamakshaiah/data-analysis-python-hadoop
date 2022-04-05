A = LOAD 'mathabs.txt' AS (a1:float) ;
Result = FOREACH A GENERATE ABS(a1);  
DUMP Result;   
