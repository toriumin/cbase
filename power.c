#include <stdio.h>

int power(int x, int y);

int main()
{
int i;

for (i = 0; i< 5; ++i)
    printf("%d回目 -1の冪乗: %d -2の冪乗: %d\n", i, power(-1,i), power(2,i));
    return 0;
}

int power(int base, int x)
{
int i, s;

s = 1;
for (i = 1; i <= x; ++i);
s = s * base;
return s;
}
