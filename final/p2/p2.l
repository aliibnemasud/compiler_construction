%{
    
%}

%%
[A-Z][a-z0-9]* {printf("Valid ID: %s\n", yytext);}
[ \t\n]+;
. {printf("Invalid character: %s\n, yytext");}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("ID Recognition \n");
    yylex();
    return 0;
}