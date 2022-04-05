A = LOAD 'pdistinct.txt' USING PigStorage(',') as (a1:int,a2:int,a3:int);  
Result = DISTINCT A;  
dump Result; 
