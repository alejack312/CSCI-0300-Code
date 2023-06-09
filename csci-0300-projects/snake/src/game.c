#include "game.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "linked_list.h"
#include "mbstrings.h"

/** Updates the game by a single step, and modifies the game information
 * accordingly. Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - width: width of the board.
 *  - height: height of the board.
 *  - snake_p: pointer to your snake struct (not used until part 2!)
 *  - input: the next input.
 *  - growing: 0 if the snake does not grow on eating, 1 if it does.
 */
void update(int* cells, size_t width, size_t height, snake_t* snake_p,
            enum input_key input, int growing) {
    // `update` should update the board, your snake's data, and global
    // variables representing game information to reflect new state. If in the
    // updated position, the snake runs into a wall or itself, it will not move
    // and global variable g_game_over will be 1. Otherwise, it will be moved
    // to the new position. If the snake eats food, the game score (`g_score`)
    // increases by 1. This function assumes that the board is surrounded by
    // walls, so it does not handle the case where a snake runs off the board.

    // TODO: implement!
    if (g_game_over == 1) {

    } else {
        if (growing == 0) {
            if (input == INPUT_UP) {
                if(*(cells + (*((int*)(snake_p->head->data))) - width) == FLAG_WALL) { //If snake runs into wall
                    g_game_over = 1;
                } else {
                    snake_p->g_direction = INPUT_UP;

                    if (*(cells + *((int*)(snake_p->head->data)) - width) == FLAG_FOOD) {
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                        *((int*)(snake_p->head->data)) -= width;
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        g_score++;
                        place_food(cells, width, height);
                    } else {
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                        *((int*)(snake_p->head->data)) -= width;
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                    }
                }
            } else if (input == INPUT_RIGHT) {

                if(*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_WALL) { //If snake runs into wall
                    g_game_over = 1;
                } else {
                    snake_p->g_direction = INPUT_RIGHT;

                    if (*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_FOOD) {
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                        *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) + 1;
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        g_score++;
                        place_food(cells, width, height);
                    } else {
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                        *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) + 1;
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                    }
                }
            } else if (input == INPUT_LEFT) {
                if(*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_WALL) { //If snake runs into wall
                    g_game_over = 1;
                } else {
                    snake_p->g_direction = INPUT_LEFT;
                    
                    if (*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_FOOD) {
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                        *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) - 1;
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        g_score++;
                        place_food(cells, width, height);
                    } else {
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                        *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) - 1;
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                    }
                }  
            } else if (input == INPUT_DOWN) {
                if(*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_WALL) { //If snake runs into wall
                    g_game_over = 1;
                } else {
                    snake_p->g_direction = INPUT_DOWN;

                    if (*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_FOOD) {
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                        *((int*)(snake_p->head->data)) += width;
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        g_score++;
                        place_food(cells, width, height);
                    } else {
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                        *((int*)(snake_p->head->data)) += width;
                        *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                    }
                }
            } else {
                if (input == INPUT_NONE && snake_p->g_direction == INPUT_RIGHT) {
                    //the snake initially moves to the right
                    if(*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_WALL) { //If snake runs into wall
                        g_game_over = 1;
                    } else {
                        if (*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_FOOD) {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) + 1;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            g_score++;
                            place_food(cells, width, height);
                        } else {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) + 1;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        } 
                    }
                } else if (input == INPUT_NONE && snake_p->g_direction == INPUT_LEFT) {
                    //the snake initially moves to the right
                    if(*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_WALL) { //If snake runs into wall
                        g_game_over = 1;
                    } else {
                        if (*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_FOOD) {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) - 1;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            g_score++;
                            place_food(cells, width, height);
                        } else {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) - 1;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        }    
                    }
                } else if (input == INPUT_NONE && snake_p->g_direction == INPUT_UP) {
                    //the snake initially moves to the right
                    if(*(cells + *((int*)(snake_p->head->data)) - width) == FLAG_WALL) { //If snake runs into wall
                        g_game_over = 1;
                    } else {
                        if (*(cells + *((int*)(snake_p->head->data)) - width) == FLAG_FOOD) {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) -= width;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            g_score++;
                            place_food(cells, width, height);
                        } else {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) -= width;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        }
                    }
                } else if (input == INPUT_NONE && snake_p->g_direction == INPUT_DOWN) {
                    //the snake initially moves to the right
                    if(*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_WALL) { //If snake runs into wall
                        g_game_over = 1;
                    } else {
                        if (*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_FOOD) {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) += width;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            g_score++;
                            place_food(cells, width, height);
                        } else {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) += width;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        }
                    }
                } else {
                    //the snake initially moves to the right
                    if(*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_WALL) { //If snake runs into wall
                        g_game_over = 1;
                    } else {
                        snake_p->g_direction = INPUT_RIGHT;
                        
                        if (*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_FOOD) {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) + 1;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            g_score++;
                            place_food(cells, width, height);
                        } else {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) + 1;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        }              
                    }
                }
            } 
        } 
        
        if(growing == 1) {
            //Have to check if snake backs into itself
            if(length_list(snake_p->head) > 1) {
                if((input == INPUT_LEFT && snake_p->g_direction == INPUT_RIGHT) ||
                (input == INPUT_RIGHT && snake_p->g_direction == INPUT_LEFT) ||
                (input == INPUT_UP && snake_p->g_direction == INPUT_DOWN) || 
                (input == INPUT_DOWN && snake_p->g_direction == INPUT_UP)) {

                } else {
                    if (input == INPUT_UP) {
                        if(*(cells + (*((int*)(snake_p->head->data))) - width) == FLAG_WALL ||
                        (*(cells + (*((int*)(snake_p->head->data))) - width) == FLAG_SNAKE &&
                        (*((int*)(snake_p->head->data))) - width != *((size_t*)(get_last(snake_p->head))))) { //If snake runs into wall
                            g_game_over = 1;
                        } else {
                            snake_p->g_direction = INPUT_UP;

                            if (*(cells + *((int*)(snake_p->head->data)) - width) == FLAG_FOOD) {
                                //get the new position of the head of the snake
                                int new_head_pos = *((int*)(snake_p->head->data)) - width;
                            
                                //insert new head
                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                //Display new snake
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                                g_score++;
                                place_food(cells, width, height);
                            } else {
                                int* old_pos = remove_last(&(snake_p->head));

                                *(cells + *old_pos) = FLAG_PLAIN_CELL;

                                free(old_pos);
                                    
                                int new_head_pos = *((int*)(snake_p->head->data)) - width;

                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));
                                    
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            }
                        }
                    } else if (input == INPUT_RIGHT) {
                        if(*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_WALL ||
                        (*(cells + (*((int*)(snake_p->head->data))) + 1) == FLAG_SNAKE &&
                        (*((int*)(snake_p->head->data))) - width != *((size_t*)(get_last(snake_p->head))))) { //If snake runs into wall
                            g_game_over = 1;
                        } else {
                            snake_p->g_direction = INPUT_RIGHT;

                            if (*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_FOOD) {
                                //get the new position of the head of the snake
                                int new_head_pos = *((int*)(snake_p->head->data)) + 1;
                            
                                //insert new head
                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                //Display new snake
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                                g_score++;
                                place_food(cells, width, height);
                            } else {
                                int* old_pos = remove_last(&(snake_p->head));

                                *(cells + *old_pos) = FLAG_PLAIN_CELL;

                                free(old_pos);
                                    
                                int new_head_pos = *((int*)(snake_p->head->data)) + 1;

                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));
                                    
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            }
                        }
                    } else if (input == INPUT_LEFT) {
                        if(*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_WALL ||
                        (*(cells + (*((int*)(snake_p->head->data))) - 1) == FLAG_SNAKE &&
                        (*((int*)(snake_p->head->data))) - width != *((size_t*)(get_last(snake_p->head))))) { //If snake runs into wall
                            g_game_over = 1;
                        } else {
                            snake_p->g_direction = INPUT_LEFT;
                            
                            if (*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_FOOD) {
                                //get the new position of the head of the snake
                                int new_head_pos = *((int*)(snake_p->head->data)) - 1;
                            
                                //insert new head
                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                //Display new snake
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                                g_score++;
                                place_food(cells, width, height);
                            } else {
                                int* old_pos = remove_last(&(snake_p->head));

                                *(cells + *old_pos) = FLAG_PLAIN_CELL;

                                free(old_pos);
                                    
                                int new_head_pos = *((int*)(snake_p->head->data)) - 1;

                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));
                                    
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            }
                        }  
                    } else if (input == INPUT_DOWN) {
                        if(*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_WALL ||
                        (*(cells + (*((int*)(snake_p->head->data))) + width) == FLAG_SNAKE &&
                        (*((int*)(snake_p->head->data))) - width != *((size_t*)(get_last(snake_p->head))))) { //If snake runs into wall
                            g_game_over = 1;
                        } else {
                            snake_p->g_direction = INPUT_DOWN;

                            if (*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_FOOD) {
                                //get the new position of the head of the snake
                                int new_head_pos = *((int*)(snake_p->head->data)) + width;
                            
                                //insert new head
                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                //Display new snake
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                                g_score++;
                                place_food(cells, width, height);
                            } else {
                                int* old_pos = remove_last(&(snake_p->head));

                                *(cells + *old_pos) = FLAG_PLAIN_CELL;

                                free(old_pos);
                                    
                                int new_head_pos = *((int*)(snake_p->head->data)) + width;

                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));
                                    
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            }
                        }
                    } else {
                        if (input == INPUT_NONE && snake_p->g_direction == INPUT_RIGHT) {
                            //the snake initially moves to the right
                            if(*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_WALL ||
                            (*(cells + (*((int*)(snake_p->head->data))) + 1) == FLAG_SNAKE &&
                            (*((int*)(snake_p->head->data))) - width != *((size_t*)(get_last(snake_p->head))))) { //If snake runs into wall
                                g_game_over = 1;
                            } else {
                                if (*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_FOOD) {
                                    //get the new position of the head of the snake
                                    int new_head_pos = *((int*)(snake_p->head->data)) + 1;
                            
                                    //insert new head
                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                    //Display new snake
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                                    g_score++;
                                    place_food(cells, width, height);
                                } else {
                                    int* old_pos = remove_last(&(snake_p->head));

                                    *(cells + *old_pos) = FLAG_PLAIN_CELL;

                                    free(old_pos);
                                    
                                    int new_head_pos = *((int*)(snake_p->head->data)) + 1;

                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));
                                    
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                } 
                            }
                        } else if (input == INPUT_NONE && snake_p->g_direction == INPUT_LEFT) {
                            //the snake initially moves to the right
                            if(*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_WALL ||
                            (*(cells + (*((int*)(snake_p->head->data))) - 1) == FLAG_SNAKE &&
                            (*((int*)(snake_p->head->data))) - width != *((size_t*)(get_last(snake_p->head))))) { //If snake runs into wall
                                g_game_over = 1;
                            } else {
                                if (*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_FOOD) {
                                    //get the new position of the head of the snake
                                    int new_head_pos = *((int*)(snake_p->head->data)) - 1;
                            
                                    //insert new head
                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                    //Display new snake
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                    g_score++;
                                    place_food(cells, width, height);
                                } else {
                                    int* old_pos = remove_last(&(snake_p->head));

                                    *(cells + *old_pos) = FLAG_PLAIN_CELL;

                                    free(old_pos);
                                    
                                    int new_head_pos = *((int*)(snake_p->head->data)) - 1;

                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));
                                    
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                }    
                            }
                        } else if (input == INPUT_NONE && snake_p->g_direction == INPUT_UP) {
                            //the snake initially moves to the right
                            if(*(cells + *((int*)(snake_p->head->data)) - width) == FLAG_WALL ||
                            (*(cells + (*((int*)(snake_p->head->data))) - width) == FLAG_SNAKE &&
                            (*((int*)(snake_p->head->data))) - width != *((size_t*)(get_last(snake_p->head))))) { //If snake runs into wall
                                g_game_over = 1;
                            } else {
                                if (*(cells + *((int*)(snake_p->head->data)) - width) == FLAG_FOOD) {
                                    //get the new position of the head of the snake
                                    int new_head_pos = *((int*)(snake_p->head->data)) - width;
                            
                                    //insert new head
                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                    //Display new snake
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                    g_score++;
                                    place_food(cells, width, height);
                                } else {
                                    int* old_pos = remove_last(&(snake_p->head));

                                    *(cells + *old_pos) = FLAG_PLAIN_CELL;

                                    free(old_pos);
                                    
                                    int new_head_pos = *((int*)(snake_p->head->data)) - width;

                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));
                                    
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                                }
                            }
                        } else if (input == INPUT_NONE && snake_p->g_direction == INPUT_DOWN) {
                            //the snake initially moves to the right
                            if(*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_WALL ||
                            (*(cells + (*((int*)(snake_p->head->data))) + width) == FLAG_SNAKE &&
                            (*((int*)(snake_p->head->data))) - width != *((size_t*)(get_last(snake_p->head))))) { //If snake runs into wall
                                g_game_over = 1;
                            } else {
                                if (*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_FOOD) {
                                    //get the new position of the head of the snake
                                    int new_head_pos = *((int*)(snake_p->head->data)) + width;
                            
                                    //insert new head
                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                    //Display new snake
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                    g_score++;
                                    place_food(cells, width, height);
                                } else {
                                    int* old_pos = remove_last(&(snake_p->head));

                                    *(cells + *old_pos) = FLAG_PLAIN_CELL;

                                    free(old_pos);
                                    
                                    int new_head_pos = *((int*)(snake_p->head->data)) + width;

                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));
                                    
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                }
                            }
                        } else {
                            //the snake initially moves to the right
                            if(*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_WALL ||
                            (*(cells + (*((int*)(snake_p->head->data))) + 1) == FLAG_SNAKE &&
                            (*((int*)(snake_p->head->data))) - width != *((size_t*)(get_last(snake_p->head))))) { //If snake runs into wall
                                g_game_over = 1;
                            } else {
                                snake_p->g_direction = INPUT_RIGHT;
                                
                                if (*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_FOOD) {
                                    //get the new position of the head of the snake
                                    int new_head_pos = *((int*)(snake_p->head->data)) + 1;
                            
                                    //insert new head
                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                    //Display new snake
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                    g_score++;
                                    place_food(cells, width, height);
                                } else {
                                    int* old_pos = remove_last(&(snake_p->head));

                                    *(cells + *old_pos) = FLAG_PLAIN_CELL;

                                    free(old_pos);
                                    
                                    int new_head_pos = *((int*)(snake_p->head->data)) + 1;

                                    insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));
                                    
                                    *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                }              
                            }
                        }
                    }
                }
            } else { // Add the first new snake flag
                if (input == INPUT_UP) {
                    if(*(cells + (*((int*)(snake_p->head->data))) - width) == FLAG_WALL) { //If snake runs into wall
                        g_game_over = 1;
                    } else {
                        snake_p->g_direction = INPUT_UP;

                        //If cell above snake has food
                        if (*(cells + *((int*)(snake_p->head->data)) - width) == FLAG_FOOD) {

                            //get the new position of the head of the snake
                            int new_head_pos = *((int*)(snake_p->head->data)) - width;
                            
                            //insert new head
                            insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                            //Display new snake
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            
                            g_score++;
                            place_food(cells, width, height);
                        } else {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) -= width;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        }
                    }
                } else if (input == INPUT_RIGHT) {

                    if(*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_WALL) { //If snake runs into wall
                        g_game_over = 1;
                    } else {
                        snake_p->g_direction = INPUT_RIGHT;

                        if (*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_FOOD) {
                            //get the new position of the head of the snake
                            int new_head_pos = *((int*)(snake_p->head->data)) + 1;
                            
                            //insert new head
                            insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                            //Display new snake
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            
                            g_score++;
                            place_food(cells, width, height);
                        } else {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) + 1;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        }
                    }
                } else if (input == INPUT_LEFT) {
                    if(*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_WALL) { //If snake runs into wall
                        g_game_over = 1;
                    } else {
                        snake_p->g_direction = INPUT_LEFT;
                        
                        if (*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_FOOD) {
                            //get the new position of the head of the snake
                            int new_head_pos = *((int*)(snake_p->head->data)) - 1;
                            
                            //insert new head
                            insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                            //Display new snake
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                            g_score++;
                            place_food(cells, width, height);
                        } else {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) - 1;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        }
                    }  
                } else if (input == INPUT_DOWN) {
                    if(*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_WALL) { //If snake runs into wall
                        g_game_over = 1;
                    } else {
                        snake_p->g_direction = INPUT_DOWN;

                        if (*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_FOOD) {
                            //get the new position of the head of the snake
                            int new_head_pos = *((int*)(snake_p->head->data)) + width;
                            
                            //insert new head
                            insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                            //Display new snake
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                            g_score++;
                            place_food(cells, width, height);
                        } else {
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                            *((int*)(snake_p->head->data)) += width;
                            *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                        }
                    }
                } else {
                    if (input == INPUT_NONE && snake_p->g_direction == INPUT_RIGHT) {
                        
                        if(*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_WALL) { //If snake runs into wall
                            g_game_over = 1;
                        } else {
                            if (*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_FOOD) {
                                //get the new position of the head of the snake
                                int new_head_pos = *((int*)(snake_p->head->data)) + 1;
                                
                                //insert new head
                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                //Display new snake
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                
                                g_score++;
                                place_food(cells, width, height);
                            } else {
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                                *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) + 1;
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            } 
                        }
                    } else if (input == INPUT_NONE && snake_p->g_direction == INPUT_LEFT) {
                        //the snake initially moves to the right
                        if(*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_WALL) { //If snake runs into wall
                            g_game_over = 1;
                        } else {
                            if (*(cells + *((int*)(snake_p->head->data)) - 1) == FLAG_FOOD) {
                                //get the new position of the head of the snake
                                int new_head_pos = *((int*)(snake_p->head->data)) - 1;
                                
                                //insert new head
                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                //Display new snake
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                                
                                g_score++;
                                place_food(cells, width, height);
                            } else {
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                                *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) - 1;
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            }    
                        }
                    } else if (input == INPUT_NONE && snake_p->g_direction == INPUT_UP) {
                        //the snake initially moves to the right
                        if(*(cells + *((int*)(snake_p->head->data)) - width) == FLAG_WALL) { //If snake runs into wall
                            g_game_over = 1;
                        } else {
                            if (*(cells + *((int*)(snake_p->head->data)) - width) == FLAG_FOOD) {
                                
                                //get the new position of the head of the snake
                                int new_head_pos = *((int*)(snake_p->head->data)) - width;
                                
                                //insert new head
                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                //Display new snake
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            

                                g_score++;
                                place_food(cells, width, height);
                            } else {
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                                *((int*)(snake_p->head->data)) -= width;
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            }
                        }
                    } else if (input == INPUT_NONE && snake_p->g_direction == INPUT_DOWN) {
                        //the snake initially moves to the right
                        if(*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_WALL) { //If snake runs into wall
                            g_game_over = 1;
                        } else {
                            if (*(cells + *((int*)(snake_p->head->data)) + width) == FLAG_FOOD) {
                                int new_head_pos = *((int*)(snake_p->head->data)) + width;
                                
                                //insert new head
                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                //Display new snake
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                                g_score++;
                                place_food(cells, width, height);
                            } else {
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                                *((int*)(snake_p->head->data)) += width;
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            }
                        }
                    } else {
                        //the snake initially moves to the right
                        if(*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_WALL) { //If snake runs into wall
                            g_game_over = 1;
                        } else {
                            snake_p->g_direction = INPUT_RIGHT;
                            
                            if (*(cells + *((int*)(snake_p->head->data)) + 1) == FLAG_FOOD) {

                                //get the new position of the head of the snake
                                int new_head_pos = *((int*)(snake_p->head->data)) + 1;
                                
                                //insert new head
                                insert_first(&(snake_p->head), &(new_head_pos), sizeof(int));

                                //Display new snake
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;

                                g_score++;
                                place_food(cells, width, height);
                            } else {
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_PLAIN_CELL;
                                *((int*)(snake_p->head->data)) = *((int*)(snake_p->head->data)) + 1;
                                *(cells + *((int*)(snake_p->head->data))) = FLAG_SNAKE;
                            }              
                        }
                    }
                }
            }
        }
        }
}

/** Sets a random space on the given board to food.
 * Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - width: the width of the board
 *  - height: the height of the board
 */
void place_food(int* cells, size_t width, size_t height) {
    /* DO NOT MODIFY THIS FUNCTION */
    unsigned food_index = generate_index(width * height);
    if (*(cells + food_index) == FLAG_PLAIN_CELL) {
        *(cells + food_index) = FLAG_FOOD;
    } else {
        place_food(cells, width, height);
    }
    /* DO NOT MODIFY THIS FUNCTION */
}

/** Prompts the user for their name and saves it in the given buffer.
 * Arguments:
 *  - `write_into`: a pointer to the buffer to be written into.
 */
void read_name(char* write_into) {
    // TODO: implement! (remove the call to strcpy once you begin your
    // implementation)
    //strcpy(write_into, "placeholder");

    printf("Name > ");
    read(0, &write_into, 1000) + '\0';   
    if (write_into == NULL) {
        printf("Name Invalid: must be longer than 0 characters.");
    } 
    //strcpy(write_into, input_name);

}

/** Cleans up on game over — should free any allocated memory so that the
 * LeakSanitizer doesn't complain.
 * Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - snake_p: a pointer to your snake struct. (not needed until part 2)
 */
void teardown(int* cells, snake_t* snake_p) {
    // TODO: implement!
    free(cells);
    
    while(length_list(snake_p->head) != 0) {
        //free(snake_p->head->data);
        //remove_element(&(snake_p->head), get_first(snake_p->head),sizeof(int));
        free(remove_first(&(snake_p->head)));
    }
    //free(snake_p);
}
