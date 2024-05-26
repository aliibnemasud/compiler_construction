%{
    int word_count = 0;
%}

 %%
 [^ \t\n]+ { ++word_count; }
 \n {
     printf("%d\n", word_count);
     word_count = 0;
 }
 %%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}