%{
    int count = 0, line = 0, charr = 0;
%}

%%
[0-9]* printf("Digit \n");
[a-zA-z_][a-zA-Z0-9_]* printf("Identifier \n");

. ++charr; 
\n ++line;
%%
int yywrap(){}
int main(){
    yylex();    
}