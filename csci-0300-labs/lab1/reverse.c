#include <stdio.h>
#include <stdlib.h>

/**
 * TODO:
 * In this file, you will write two functions:
 *
 * 1. reverse_arr: will take in two inputs a char* array and the number of
 * elements in the array. It's responsible for reversing the input array. You
 * should be modifying this array in place. Meaning that you shouldn't returning
 * anything from this function.
 *
*/



/**
 * 2. swap: will take in two elements from the array and swap them. Returns
 * nothing.
 *
 * Example:
 * Given an array ["hello", "my", "name", "is"], after calling reverse_arr
 * will result in ["is", "name", "my", "hello"]
 */

void swap(char** word_one, char** word_two)
{
    char* temp_one = *word_one;
    *word_one = *word_two;
    *word_two = temp_one;
}

void reverse_arr(char* arr[], int num_elts)
{
    int opp = num_elts - 1;
    
    if (num_elts % 2 == 0) {

        // printf("elt: %d\n", opp);

        // printf("Checking whether the declaration worked, in the if block\n");
        for (int i = 0; i < opp; i++) {
            // printf("elt: %p\n", &arr[i]);
            // printf("elt: %p\n", &arr[opp]);
            swap(&arr[i], &arr[opp]);
            opp--;
        }
    }
    else {

        // printf("Declaration did not work. In the else block. "
        //    "num_elts's value is: %d\n", num_elts);

        //printf("elt: %d\n", opp);

        for (int i = 0; i < opp - 1; i++)
        {
            swap(&arr[i], &arr[opp]);
            opp--;
        }
    }
}