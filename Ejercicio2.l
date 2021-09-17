%{
	#include<stdio.h>
	int Mayu=0;
	int Min=0;
%}

%%
[A-Z] {printf("Mayuscula\t"); Mayu++;}
[a-z] {printf("Minuscula\t"); Min++;}
%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("Escribe una cadena de texto\n");
	yylex();

	printf("Mayuscula=%d and Minuscula=%d", Mayu, Min);
	
}