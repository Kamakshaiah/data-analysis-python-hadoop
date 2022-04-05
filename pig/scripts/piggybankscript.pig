REGISTER /usr/local/pig/contrib/piggybank/java/piggybank.jar;
Tweets = LOAD '../data/tweets.txt' using PigStorage() as (line:chararray); 
TweetsInaug = FILTER Tweets BY org.apache.pig.piggybank.evaluation.string.UPPER(text) 
    MATCHES '.*(INAUG|OBAMA|BIDEN|CHENEY|BUSH).*' ;
DUMP TweetsInaug;

