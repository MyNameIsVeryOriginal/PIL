
D [0-9]

%%

[D]+ {
	printf("un int : %s\n",yytext);
} 

[D]+"."[D]* {
	printf("un réel:%s\n",yytext);
}

. {}

%%
