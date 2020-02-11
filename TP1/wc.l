%{
    unsigned int lines = 0;
    unsigned int words = 0;
    unsigned int chars = 0;
%}

word [^ \t\n]+
eol \n

%%
{word} {
    words++;
    chars += yyleng;
}

{eol} {
    chars++;    
    lines += yyleng;
}

. {
    words = words + 1;
}

%%

int main(){
    yylex();
    printf("lines=%d words=%d chars=%d\n",lines,words,chars);
}
