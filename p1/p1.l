%{
    int character = 0, line = 0;
%}

%%
. ++character;
\n ++line;
%%


int yywrap(){}

int main(){
    yylex();
    printf("%d %d", character, line);
}