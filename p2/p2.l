%{
    int character = 0, line = 0;
%}

%%
. printf("character \n");
\n printf("Limne \n");
%%


int yywrap(){}

int main(){
    yylex();    
}