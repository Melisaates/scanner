%{
#include "my_scanner_token.h"
%}
/*Definitions*/
DIGIT [0-9]
LETTER [a-zA-Z]
%%

(" "|\t|\n) /* skip whitespace */
{DIGIT}+ {return TOKEN_NUMBER_INT;}
[DIGIT+].[DIGIT+] {return TOKEN_NUMBER_FLOAT;}
'{LETTER}' {return TOKEN_LETTER_CHAR;}
int     {return TOKEN_INT;}
float    {return TOKEN_FLOAT;}
char    {return TOKEN_CHAR;}
if      {return TOKEN_IF;}
else    {return TOKEN_ELSE;}
for         {return TOKEN_FOR;}
while       {return TOKEN_WHILE;} 
printf      {return TOKEN_PRINTF;}
return      {return TOKEN_RETURN;}
("//"|"/*"|"*/")  {return TOKEN_COMMENT;}
("||")      {return TOKEN_OR;}
\&&      {return TOKEN_AND;}
\%       {return TOKEN_MOD;}
\=      {return TOKEN_ASSIGN;}
\==      {return TOKEN_EQUAL;}
\!=      {return TOKEN_NOT_EQUAL;}
\>       {return TOKEN_GREATER;}
\<       {return TOKEN_LESS;}
\>=      {return TOKEN_GREATER_EQUAL;}
\<=      {return TOKEN_LESS_EQUAL;}
\++      {return TOKEN_INCREASE;}
\--      {return TOKEN_DECREASE;}
\+       {return TOKEN_ADD;}
\-       {return TOKEN_SUB;}
\*       {return TOKEN_MULTIPLY;}
("/")       {return TOKEN_DIVIDE;}
{LETTER}+({DIGIT}|{LETTER}|_)* {return TOKEN_IDENT;}
.       {return TOKEN_ERROR;}
%%
int yywrap() {return 1;}