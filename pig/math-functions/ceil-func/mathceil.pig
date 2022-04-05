A = LOAD 'mathceil.txt' AS (a1:float) ;  
Result = FOREACH A GENERATE CEIL(a1);  
DUMP Result;  
