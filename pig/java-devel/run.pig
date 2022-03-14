/*
$cd PIG_HOME/bin 
$./pig –x local 
*/

REGISTER 'myudfs.jar'; 
--DEFINE sample_eval sample_eval();

emp_data = LOAD 'emp_data' USING PigStorage(',') as (id:int, name:chararray, age:int, city:chararray);

result = FOREACH emp_data GENERATE myudfs.sample_eval(name);
dump result; 
