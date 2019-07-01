#include <stdio.h>

int power(int x, int y);

int main()
{
    int i;

    for (i = 0; i< 5; ++i)
        printf("%d乗 -1の冪乗: %d -2の冪乗: %d\n", i, power(-1,i), power(2,i));
        return 0;
}

int power(int base, int y)
{
    int i, s;

    s = 1;

    for (i = 1; i <= y; ++i)
        s = s * base;
        return s;
}
