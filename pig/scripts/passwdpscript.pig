/* id.pig */

A = load '../data/passwd' using PigStorage(':');  -- load the passwd file 
B = foreach A generate $0 as id;  -- extract the user IDs 
dump B;  -- write the results to a file name id.out
