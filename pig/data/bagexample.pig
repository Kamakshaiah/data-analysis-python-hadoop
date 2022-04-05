data = load 'bagdata2.txt' using PigStorage(',') as (c1:int, c2:int, c3:int, c4:int) 
dump data; 
