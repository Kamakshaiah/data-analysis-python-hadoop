A = LOAD 'pcross1.txt' USING PigStorage(',') AS (a1:int,a2:int);  
dump A; 
B = LOAD 'pcross2.txt' USING PigStorage(',') AS (b1:int,b2:int,b3:int);  
dump B; 
Result = CROSS A,B; 
DUMP Result;  
