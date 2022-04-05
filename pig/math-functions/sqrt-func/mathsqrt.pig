A = LOAD 'mathsqrt.txt' AS (a1:float) ;  
Result = FOREACH A GENERATE SQRT(a1);  
DUMP Result;  
