A = LOAD 'pload.txt' USING PigStorage(',') AS (a1:int,a2:int,a3:int,a4:int); 
DUMP A;
DESCRIBE A;
