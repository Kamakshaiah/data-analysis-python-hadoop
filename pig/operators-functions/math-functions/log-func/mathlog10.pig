A = LOAD 'mathlog10.txt' AS (a1:float) ;  
Result = FOREACH A GENERATE LOG10(a1);  
DUMP Result;  
