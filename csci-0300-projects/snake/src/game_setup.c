#include "game_setup.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

// Some handy dandy macros for decompression
#define E_CAP_HEX 0x45
#define E_LOW_HEX 0x65
#define S_CAP_HEX 0x53
#define S_LOW_HEX 0x73
#define W_CAP_HEX 0x57
#define W_LOW_HEX 0x77
#define DIGIT_START 0x30
#define DIGIT_END 0x39

/** Initializes the board with walls around the edge of the board.
 *
 * Modifies values pointed to by cells_p, width_p, and height_p and initializes
 * cells array to reflect this default board.
 *
 * Returns INIT_SUCCESS to indicate that it was successful.
 *
 * Arguments:
 *  - cells_p: a pointer to a memory location where a pointer to the first
 *             element in a newly initialized array of cells should be stored.
 *  - width_p: a pointer to a memory location where the newly initialized
 *             width should be stored.
 *  - height_p: a pointer to a memory location where the newly initialized
 *              height should be stored.
 */
enum board_init_status initialize_default_board(int** cells_p, size_t* width_p,
                                                size_t* height_p) {
    *width_p = 20;
    *height_p = 10;
    int* cells = malloc(20 * 10 * sizeof(int));
    *cells_p = cells;
    for (int i = 0; i < 20 * 10; i++) {
        cells[i] = FLAG_PLAIN_CELL;
    }

    // Set edge cells!
    // Top and bottom edges:
    for (int i = 0; i < 20; ++i) {
        cells[i] = FLAG_WALL;
        cells[i + (20 * (10 - 1))] = FLAG_WALL;
    }
    // Left and right edges:
    for (int i = 0; i < 10; ++i) {
        cells[i * 20] = FLAG_WALL;
        cells[i * 20 + 20 - 1] = FLAG_WALL;
    }

    // Add snake
    cells[20 * 2 + 2] = FLAG_SNAKE;

    return INIT_SUCCESS;
}

/** Initialize variables relevant to the game board.
 * Arguments:
 *  - cells_p: a pointer to a memory location where a pointer to the first
 *             element in a newly initialized array of cells should be stored.
 *  - width_p: a pointer to a memory location where the newly initialized
 *             width should be stored.
 *  - height_p: a pointer to a memory location where the newly initialized
 *              height should be stored.
 *  - snake_p: a pointer to your snake struct (not used until part 2!)
 *  - board_rep: a string representing the initial board. May be NULL for
 * default board.
 */
enum board_init_status initialize_game(int** cells_p, size_t* width_p,
                                       size_t* height_p, snake_t* snake_p,
                                       char* board_rep) {
    // TODO: implement!
    enum board_init_status result;
    snake_p->head = NULL;


    if (board_rep != NULL) {
        result = decompress_board_str(cells_p, width_p, height_p, snake_p, board_rep);

        int pos;

        //Iterate through cells and find position.

        snake_p->g_direction = INPUT_NONE;
        insert_first(&(snake_p->head), (void*)(&pos), sizeof(int));

        //g_game_over = 0;
        //g_score = 0;

        //place_food(*cells_p, *width_p, *height_p);
    } else {
        // Call initialize_default_board to initialize cells_p, width_p, and 
        // height_p. (You should not touch the snake_p parameter until part 2!) 
        

        result = initialize_default_board(cells_p, width_p, height_p);

        int pos = 42;

        snake_p->g_direction = INPUT_NONE;
        insert_first(&(snake_p->head), (void*)(&pos), sizeof(int));

        
        //You should also initialize all global variables declared in common.h, 
        //including general game data and the snake data you defined.
        g_game_over = 0;  // 1 if game is over, 0 otherwise
        g_score = 0;      // game score: 1 point for every food eaten
        
        
        //(snake_p->head)->data = &42;

        
        place_food(*cells_p, *width_p, *height_p);

        //*cells_p is a pointer to the first element in a newly initialized array of
        //cells

        //**cells_p is the first value of the newly initialized array of cells
        // for (size_t i = 0; i < sizeof(*cells_p); i++) {
        //     if (*(*cells_p + i) == FLAG_SNAKE){
        //         g_position = (*cells_p + i);
        //     }
        
        // }
    

        // for (size_t i = 0; i < *width_p * *height_p; i++) {
        //     if (*cells_p[i] == FLAG_SNAKE) {
        //         g_position = &*cells_p[i];
        //     }
        // }
    }
        

    //You should set the return value to the value returned from 
    // initialize_default_board. 
    return result;
}



/** Takes in a string `compressed` and initializes values pointed to by
 * cells_p, width_p, and height_p accordingly. Arguments:
 *      - cells_p: a pointer to the pointer representing the cells array
 *                 that we would like to initialize.
 *      - width_p: a pointer to the width variable we'd like to initialize.
 *      - height_p: a pointer to the height variable we'd like to initialize.
 *      - snake_p: a pointer to your snake struct (not used until part 2!)
 *      - compressed: a string that contains the representation of the board.
 * Note: We assume that the string will be of the following form:
 * B24x80|E5W2E73|E5W2S1E72... To read it, we scan the string row-by-row
 * (delineated by the `|` character), and read out a letter (E, S or W) a number
 * of times dictated by the number that follows the letter.
 */
enum board_init_status decompress_board_str(int** cells_p, size_t* width_p,
                                            size_t* height_p, snake_t* snake_p,
                                            char* compressed) {
    // TODO: implement!
    enum board_init_status ret;
    size_t board_loc;
    int* cells;
    
    char *a,*c;

    char* arr[1000];
    int cnt = 0;
    
    // Try and first break down the compressed string into smaller pieces.
    // Think about how you can leverage the delimiter character “|”, which
    // separates the encoding of our board by row.
    
    for(a = strtok_r(compressed,"|",&c); a != NULL; a = strtok_r(NULL,"|",&c)) 
    {
        arr[cnt] = a;
        printf("%s\n", arr[cnt]);
        //printf("%s\n",a);
        cnt++;
    }
    
    // Figure out how to set the dimensions of your board according to what was
    // specified in the prefix of the encoded string. Here, “x” is your magical
    // delimiter—you know that everything between the starting “B” and “x”
    // should be an integer that corresponds to the height of the board, and
    // everything between the “x” and the first “|” delimiter will correspond
    // to the width of the board.
    
    for(int i = 0; i < cnt; i++) {
        if (i == 0) {
            char* token; // = strtok(strtok(arr[i], "B"), "x");
            while ((token = strtok_r(arr[i], "x", &arr[i]))) {
                //printf("%s\n", token);
                if (*token == 'B') {
                    //atoi for board dimensions
                    int x = atoi(strtok(token, "B"));
                    //printf("%d\n", x);
                    size_t sz = (size_t) x;
                    printf("Height: %lu \n", sz);
                    *height_p = sz;

                    if(*height_p != (size_t) cnt - 1) {
                        printf("Error in Location I");
                        ret = INIT_ERR_INCORRECT_DIMENSIONS;
                    }
                } else {
                    //atoi for board dimensions
                    int x = atoi(token);
                    //printf("%d\n", x);
                    size_t sz = (size_t) x;
                    printf("Width: %lu\n", sz);
                    *width_p = sz;
                }
               
            }
            cells = malloc((int)(*width_p) * (int)(*height_p) * sizeof(int));
            *cells_p = cells;
        } else {
            // You will likely want to loop through your strings and fill in the
            // board’s cells as you go. This means that you will need to store 
            // some information regarding where in the board you are, what type 
            // of cell you are currently reading, and how many consecutive cells
            // of that type you want to fill in.
            int str_end = strlen(arr[i]);
            
            //printf("str_end: %u\n", str_end);
            
            //printf("str: %s\n", arr[i]);
            int ind;
            
            int sum;
            //int is_wall = 0;

            int sub_arr_w[1000];
            int sub_arr_e[1000];
            int sub_arr_s[1000];

            for(int j = 0; j < str_end - 1; j++) {
                // if (atoi(arr[i][j]) == /*type int*/) {
                //     if (is_wall == 1) {
                //         sub_arr_w[ind_w] = arr[i][j];
                //         sub_arr_e[ind_e] = ' ';
                //         ind++;
                //     } else {
                //         sub_arr_e[ind] = arr[i][j];
                //         sub_arr_w[ind] = ' ';
                //         ind++;
                //     }
                // }
                if ((arr[i][j] == 'S' && arr[i][j+1] != 1) || ((arr[i][j+2] != 'W' || arr[i][j+2] != 'E') && !(j+2 >= str_end))) { 
                    ret = INIT_ERR_WRONG_SNAKE_NUM;
                } else if (arr[i][j] == 'S') {
                    sub_arr_w[ind] = 0;
                    sub_arr_e[ind] = 0;
                    sub_arr_s[ind] = atoi(&(arr[i][j + 1]));
                    ind++;
                } else if (arr[i][j] == 'W') {
                    //is_wall = 1;
                    if(isdigit(arr[i][j+1])) {
                        sub_arr_w[ind] = atoi(&(arr[i][j + 1]));
                        sub_arr_e[ind] = 0;
                        sub_arr_s[ind] = 0;
                    }
                    ind++;
                } else if (arr[i][j] == 'E') { 
                    //is_wall = 0;
                    if(isdigit(arr[i][j+1])) {
                        sub_arr_e[ind] = atoi(&(arr[i][j + 1]));
                        sub_arr_w[ind] = 0;
                        sub_arr_s[ind] = 0;
                    }
                    ind++;
                } else {
                    // any other part of the compressed string was formatted
                    // incorrectly
                    ret = INIT_ERR_BAD_CHAR;
                    ind++;
                }
            }


            for(int k = 0; k < ind; k++) {
                printf("%u\n", sub_arr_e[k]);
                printf("%u\n", sub_arr_w[k]);
                printf("%u\n", sub_arr_s[k]);

                int add = sub_arr_e[k] + sub_arr_w[k] + sub_arr_s[k];
                sum += add;
            }

            if(*width_p < (size_t) (sum)) {
                printf("Error in Location II, sum: %u \n", sum);
                ret = INIT_ERR_INCORRECT_DIMENSIONS;
            }

            if(board_loc < (*width_p) * (*height_p)) {
                for(int j = 0; j < ind; j++) {
                    if (sub_arr_s[ind] == 0 && sub_arr_e[ind] == 0 && sub_arr_w[ind] != 0) {
                        cells[board_loc] = FLAG_WALL;
                        board_loc++;
                    } else if (sub_arr_s[ind] == 0 && sub_arr_w[ind] == 0 && sub_arr_e[ind] != 0) {
                        cells[board_loc] = FLAG_PLAIN_CELL;
                        board_loc++;
                    } else if (sub_arr_w[ind] == 0 && sub_arr_e[ind] == 0 && sub_arr_s[ind] == 1) {
                        cells[board_loc] = FLAG_SNAKE;
                        board_loc++;
                    } else {
                        board_loc++;
                    }
                }
            }
        }
    }
     
   

    return ret;
}
