A = LOAD 'evalavg.txt' USING PigStorage(',') AS (a1:chararray,a2:chararray,a3:chararray, a4:float) ;
B = GROUP A BY a1;   
Result = FOREACH B GENERATE A.a1, AVG(A.a4);
dump Result; 
