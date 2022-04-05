A = load 'studentgrades.csv' using PigStorage(',') as (name, term, grade); 
dump A; 
B = group A by name; 
C = foreach B generate name, AVG(A.grade); 
dump C; 
