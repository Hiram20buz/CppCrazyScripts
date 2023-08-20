#include <stdio.h>
    
int main()
{
    if (({int c = 10;c%2 == 0;})){
        printf("Hello word");
    }

    return 0;
}
