#include <stdio.h>

int main() {
    int sayi, faktoriyel = 1;

    printf("Bir sayı girin: ");
    scanf("%d", &sayi);

    for (int i = 1; i <= sayi; i++) {
        faktoriyel *= i;
    }

    printf("%d sayısının faktöriyeli: %d\n", sayi, faktoriyel);

    return 0;
}