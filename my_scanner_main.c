//yytext:anımlanan en son tokenin metin temsilini tutan bir karakter dizisidir
//yywrap:Lexerin döngüsünü kontrol eder ve giriş dosyasının sonuna gelindiğinde ne yapılacağını belirler. 
//Eğer yywrap 0 değerini döndürürse, lexer çalışmasını sürdürür ve yeni bir giriş dosyası bekler. Eğer 0 olmayan bir değer döndürürse, lexerin çalışması sona erer.
//yyin: Lexerin giriş dosyasını temsil eden bir dosya işaretçisidir. Lexerin giriş metnini okuması ve analiz etmesi için kullanılır. 
//yylex: Lexerin ana işlevini ifade eden bir isimdir. Giriş metnini tokenlara (dilbilgisi parçalarına) ayırır ve belirli bir dilbilgisi kurallarına dayalı olarak bu tokenleri tanımlar. yylex işlevi, lexer tarafından tanımlanan tokenlere bağlı olarak ilgili işlemleri gerçekleştirir.

#include "my_scanner_token.h"
#include <stdio.h>
extern FILE *yyin;
extern int yylex();
extern char *yytext;

int main()
{
    yyin=fopen("program.c","r");
    if(!yyin){
        printf("Could not open program.c!\n");
        return 1;
    }

    while(1){
        my_token t=yylex();
        if(t== TOKEN_EOF){
            break;
        }
        printf("token = %d - text = %s\n",t,yytext);
    }
}