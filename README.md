# eggNOG_cleanup
Cleanup eggNOG results into R-parsable COG categories

### What it does    
awks columns 1 (identifier) and 21 (possibly COG category). COG categories are then reduced to include the last available character only. Once identifiers and categories are parsed, they get stored in two separate arrays. Consequently, each array is accessed through its index and information queried against a case statement.  Descriptions were retrieved in 2021 from https://www.ncbi.nlm.nih.gov/research/cog/.  
Adjust accordingly shall the COG category be in a column other than the twenty-first (line 5). 


### Why it does it  
To render eggNOG results easily compatible with any statistical analysis software.  

### Requirements  
Bash and its native text processing and floating point arithmetic tools.  
