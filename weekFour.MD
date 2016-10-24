### Week Four

#### Editing text

Lower Case and Uppercase

  * __tolower()__
  * __toupper()__
  
Column names separated by dot.
  *__strsplit__
  
Fixing character verctor
  * sub()
  * gsub()
  
  
  Finding Values (find an specific value)
   * grep()
   * grepl()
   
Library---  stringr
* nchar()
* substr()
* paste()
* str_trim()

##### Gneral about strings
Names of variables should be:
* All Lower case when posible
* Descriptive (Diagnois versus DX)
* Not duplicated
* not have underscores or dots or white spaces

Variables with character values
* Should usually be mande into factor varaibles (depends on application)
* Should be descriptive use True/False instead of 0/1 and Male/Female versus 0/1 or M/F

### Regular Expressions

* Regular expressions can be thought of as a combination of literals and metacharacters
* To draw an analogy with natural language, think of literal text forming the words of this language, and the metacharacters defining its grammar
* Regular expressions have a rich set of metacharacters

* Simplest pattern consists only of literals; a match occurs if the sequence of literals occurs anywhere in the text being tested
* What if we only want the word "Obama", ot sentece that end in the word "Clinton" or "clinton", "clinto"

We need a way to express:
* Whitespace word boundaries
* Set of literals
* the beginning and end of a line
* alternatives ("war" or "peace") Metacharacters

Metacharacters are the grammar

#### Metacharacters
* ^ the begging
* & the end
* [] any character
* [a-z] [0-9]
* [^?.]$
* . followed by any character
* Alternatives |  (flood|earthquake|hurricane) -----  ^([Gg]ood|[Bb]ad)
* \ ---- to not consider as a metacharacter
* * and + are metacharacters used to indicate repetition; means "any number, including none, of the item" and + mans at least one of the items"
* {} are refered to as interval quiantifiers; let us specify the minimun and maximum number of matches of an expression.
