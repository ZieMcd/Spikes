#include <cs50.h>
#include <stdio.h>
int GetPostiveInt();

int main(void)
{
    int height = GetPostiveInt();

    for (int i = 1; i <= height ; i++)
    {
       for (int f =1; f <= height-i; f++)
       {
           printf(" ");
       }

        for (int j = 1; j <= i; j++)
        {
           printf("#");
        }
        printf("  ");
        for (int j = 1; j <= i; j++)
        {
           printf("#");
        }
        printf("\n");
    }
   
}

int GetPostiveInt()
{   
    int n = 0; 
    do 
    {
        n = get_int("What is the height: ");
    }
    while (n < 1 || n > 8);
    return n;
}
