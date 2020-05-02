%{
#include<stdio.h>
#include "y.tab.h"
%}
digit [0-9]
alpha [A-Za-z]

%%

[ \t\n]				;
select            	return SELECT;
from             	return FROM;
distinct         	return DISTINCT;
where           	return WHERE;
like               	return LIKE;
desc              	return DESC;
asc                	return ASC;
"group by"    		return GROUP;
having          	return HAVING;
"order by"    		return ORDER;
or                 	return OR;
and               	return AND;
{digit}+       		return NUM;
{alpha}({alpha}|{digit})* 	return ID;
"<="             	return LE;
">="             	return GE;
"=="             	return EQ;
"!="              	return NE;
.                   return yytext[0];

%%

int yywrap()
{
	return 1;
}

