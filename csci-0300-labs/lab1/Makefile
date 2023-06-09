CFLAGS = -Wall -Werror -O3



all: reverse_test test_reverse.o reverse.o




# test_reverse.o: test_reverse.c
# 	gcc $(CFLAGS) -c test_reverse.c -o test_reverse.o

# reverse.o: reverse.c
# 	gcc $(CFLAGS) -c reverse.c -o reverse.o

%.o: %.c %.h
	gcc $(CFLAGS) -c $< -o $@

reverse_test: test_reverse.o reverse.o
	gcc $^ -o $@

clean:
	rm -f reverse_test 
	rm -f test_reverse.o reverse.o

format: 
	clang-format -style=Google -i test_reverse.o reverse.o

.PHONY: all clean format