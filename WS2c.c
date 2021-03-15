#include <stdio.h>
# include <math.h>
# include <stdlib.h>
# include <time.h>
typedef struct linked_list
{
   int data;
   struct linked_list *next;
}   element;

int count=0;

typedef element * elementptr;

void trav_and_print (elementptr);

void justchecking(elementptr);

int count_elem(elementptr);

int main()
{
   elementptr first = NULL,
             last = NULL;

   /* Create a linked list with one element            */
   /* NOTE: the first element is always a special case */

   first = (elementptr) malloc(sizeof(element));
   last = first;
   last -> data = 5;
   last -> next = NULL;

   /* Add another element to the end of the list */

   last -> next = (elementptr) malloc(sizeof(element));
   last = last -> next;
   last -> data = 12;
   last -> next = NULL;
   trav_and_print(first);

   count=count_elem(first);
   printf("the number of linked lists is %d\n",count);

   justchecking(first);
   printf("%d\n",first->data);
   printf("%d\n",last->data);

   free(first);
   free(last);

   return 0;
}
void trav_and_print(elementptr f)
{
    elementptr current;
    current = f;
    while (current !=NULL)
    {
        printf("The data value is %d\n",current->data);
        current=current->next;
    }
    printf("\n");
}
int count_elem(elementptr f)
{
    elementptr current;
    current = f;
    
    while (current !=NULL)
    {
        current=current->next;
        count++;

    }
    return count;
}
void justchecking(elementptr f)
{
    elementptr current;
    trav_and_print(current);
    count=count_elem(current);
    printf("the number of linked lists is %d\n",count);
}