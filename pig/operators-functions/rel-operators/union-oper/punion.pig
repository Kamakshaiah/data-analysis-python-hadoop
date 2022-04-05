A = load 'punion1.txt' using PigStorage(',') as (a1:int,a2:int);  
B = LOAD 'punion2.txt' USING PigStorage(',') AS (b1:int,b2:int,b3:int);  
Result = UNION A,B;  
dump Result; 
