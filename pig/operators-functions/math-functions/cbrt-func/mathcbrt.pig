A = LOAD 'mathcbrt.txt' AS (a1:int) ;  
Result = FOREACH A GENERATE CBRT(a1);  
DUMP Result; 
