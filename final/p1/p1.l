%{
    
%}

%%
[+]?[0-9]+ {printf("Positive Integer\n");}
[-]?[0-9]+ {printf("Negative Integer\n");}
[+-]?[0-9]*[.][0-9]+ {printf("Floating Number \n");}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    return 0;
}