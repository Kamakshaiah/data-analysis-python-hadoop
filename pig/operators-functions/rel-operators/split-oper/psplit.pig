A = LOAD 'psplit.txt' USING PigStorage(',') AS (a1:int,a2:int) ; 
DUMP A;  
SPLIT A INTO X IF a1<=3, Y IF a1>3;
DUMP X;  
DUMP Y;    
