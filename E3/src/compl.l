%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}

id [a-zA-Z_][a-zA-Z0-9_]{0,255}
digits [0-9]+
char \\?.

%%

\/\/.*          { /* ignorar comentários */ }
[ \t\n\r]            { /* ignorar espaços */  }
{digits}        { return NUM; }
'{char}'        { return CHAR; }
\"{char}*\"     { return STR; }

array           { return ARRY; }
boolean         { return BOOL; }
char            { return KCHAR; }
else            { return ELSE; }
false           { return FLS; }
for             { return FOR; }
function        { return FNC; }
if              { return IF; }
integer         { return INT; }
print           { return PRT; }
return          { return RTN; }
string          { return KSTR; }
true            { return TRUE; }
void            { return VOID; }
while           { return WHLE; }

{id}            { return ID; }

"<="            { return LEQ; }
">="            { return GEQ; }
"=="            { return EQ; }
"!="            { return NEQ; }
"&&"            { return AND; }
"||"            { return OR; }

"+"             { return '+'; }
"-"             { return '-'; }
"*"             { return '*'; }
"/"             { return '/'; }
"%"             { return '%'; }
"!"             { return '!'; }
"<"             { return '<'; }
">"             { return '>'; }
"="             { return '='; }
":"             { return ':'; }
";"             { return ';'; }
","             { return ','; }
"("             { return '('; }
")"             { return ')'; }
"["             { return '['; }
"]"             { return ']'; }
"{"             { return '{'; }
"}"             { return '}'; }
"\\"            { return '\\'; }

. 				{ return ERROR; }


%%