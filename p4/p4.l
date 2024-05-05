%{
    int count = 0, line = 0;
%}
%%
[0-9]+ ++count;
[a-zA-z_][a-zA-Z0-9_]* ++line;
%%
int yywrap(){}
int main(){
    yylex();
    printf("%d %d", count, line);   
}