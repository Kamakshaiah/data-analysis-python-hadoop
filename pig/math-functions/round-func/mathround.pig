A = LOAD 'mathround.txt' AS (a1:float) ;  
Result = FOREACH A GENERATE ROUND(a1);  
DUMP Result;  
