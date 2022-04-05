A = LOAD 'pforeach.txt' USING PigStorage(',') AS (a1:int,a2:int,a3:int);
DUMP A;  
fe = FOREACH A generate a1,a2;
DUMP fe;      
