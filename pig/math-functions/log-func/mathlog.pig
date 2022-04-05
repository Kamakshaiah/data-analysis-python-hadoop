A = LOAD 'mathlog.txt' AS (a1:float) ;  
Result = FOREACH A GENERATE LOG(a1);  
DUMP Result;  
