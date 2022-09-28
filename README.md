# ft_printf
Short implementation of the original printf function(stdio.h).

````c
int main(void)
{
  char  *str = "cat";
  int   num = 3;
  ft_printf("The %s eats %i fishes.", str, num);
  return 0;
}
````
Output:
````
My cat eats 3 fishes.
````

This conversions are implemented:
- %c prints a single character.
- %s prints a string (as defined by the common C convention).
- %p the void * pointer argument has to be printed in hexadecimal format.
- %d prints a decimal (base 10) number.
- %i prints an integer in base 10.
- %u prints an unsigned decimal (base 10) number.
- %x prints a number in hexadecimal (base 16) lowercase format.
- %X prints a number in hexadecimal (base 16) uppercase format.
- %% prints a percent sign.
