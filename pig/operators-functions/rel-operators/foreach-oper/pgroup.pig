A = LOAD 'pgroup.txt' USING PigStorage(',') AS (fname:chararray,lname:chararray,age:int);  
DUMP A;  
gbylname = group A by lname;  
dump gbylname; 
