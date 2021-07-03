#!/bin/bash
#09117 

find $PWD -type f -not -empty | sed 's/^/"/g' | sed 's/$/"/g' | sed 's/^/sha1sum /e' | sort | uniq -w 40 --all-repeated=separate

#find $PWD -type f -not -empty      //find all non-empty files in current working directory
#sed 's/^/"/g' | sed 's/$/"/g'      //quote all files |-_-| ./filename --> "./filename"
#sed 's/^/sha1sum /e'               //execute sha1 checksum for all files <o_o>
#                                   //output be like 
#                                   //sha1-checksum-of-file ./filename
#sort		                    sort |o_o|
#uniq -w 40 --all-repeated=separate //compare first 40 characters (sha1sum output 40 char long) 
#                                   //then show duplicated lines \|^_^|/
