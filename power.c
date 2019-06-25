
#include <stdio.h>
#include "power.h"

int power(int x, int y, int a) {
    for(x = 0; x < 3; x++) {
        for(y = 0; y < 4; y++) {
            a = x * y;
            printf("%d の %d 乗 = %d\n", power(x, y, a));
            return 0;
        }
    }
}
