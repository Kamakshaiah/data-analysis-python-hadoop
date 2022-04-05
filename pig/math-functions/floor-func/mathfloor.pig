A = LOAD 'mathfloor.txt' AS (a1:float);  
Result = FOREACH A GENERATE FLOOR(a1);  
DUMP Result;  
