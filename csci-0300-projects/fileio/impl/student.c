#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <assert.h>
#include <stdarg.h>

#include "../io300.h"



/*
    student.c
    Fill in the following stencils
*/

/*
    When starting, you might want to change this for testing on small files.
*/

//Cache size: The total size of the cache in bytes.

#ifndef CACHE_SIZE
#define CACHE_SIZE 4
#endif

#if(CACHE_SIZE < 4)
#error "internal cache size should not be below 4."
#error "if you changed this during testing, that is fine."
#error "when handing in, make sure it is reset to the provided value"
#error "if this is not done, the autograder will not run"
#endif

/*
   This macro enables/disables the dbg() function. Use it to silence your
   debugging info.
   Use the dbg() function instead of printf debugging if you don't want to
   hunt down 30 printfs when you want to hand in
*/
#define DEBUG_PRINT 1
#define DEBUG_STATISTICS 1

struct io300_file {
    /* read,write,seek all take a file descriptor as a parameter */
    int fd;
    /* this will serve as our cache */
    char *cache;


    // TODO: Your properties go here
    
    // Current cache pointer position: The current position of the cache pointer 
    //relative to the cache head.
    off_t cache_ind;

    // Current cache position: The current position of the cache relative to 
    // the file position.
    off_t cache_start;

    // Current file position: The current position of the file pointer in bytes.
    off_t file_offset;


    // A flag indicating whether the cache block has been modified and needs to 
    // be written back to the file.
    int isModified;

    // A flag indicating whether the cache block has is empty or not.
    int isCacheEmpty;

    // File size: The total size of the file in bytes.
    off_t file_size;

    /* Used for debugging, keep track of which io300_file is which */
    char *description;

    /* To tell if we are getting the performance we are expecting */
    struct io300_statistics {
        int read_calls;
        int write_calls;
        int seeks;
    } stats;
};

/*
    Assert the properties that you would like your file to have at all times.
    Call this function frequently (like at the beginning of each function) to
    catch logical errors early on in development.
*/
static void check_invariants(struct io300_file *f) {
    assert(f != NULL);
    assert(f->cache != NULL);
    assert(f->fd >= 0);

    // TODO: Add more invariants
    assert(f->description != NULL);

    assert(f->file_size >= 0);
    

    // assert(f->stats.read_calls >= 0); //greater than or equal to zero
    // assert(f->stats.write_calls >= 0);
    // assert(f->stats.seeks >= 0);
}

/*
    Wrapper around printf that provides information about the
    given file. You can silence this function with the DEBUG_PRINT macro.
*/
static void dbg(struct io300_file *f, char *fmt, ...) {
    (void)f; (void)fmt;
#if(DEBUG_PRINT == 1)
    static char buff[300];
    size_t const size = sizeof(buff);
    int n = snprintf(
        buff,
        size,
        // TODO: Add the fields you want to print when debugging
        "{desc:%s, } -- ",
        f->description
    );
    int const bytes_left = size - n;
    va_list args;
    va_start(args, fmt);
    vsnprintf(&buff[n], bytes_left, fmt, args);
    va_end(args);
    printf("%s", buff);
#endif
}



struct io300_file *io300_open(const char *const path, char *description) {
    if (path == NULL) {
        fprintf(stderr, "error: null file path\n");
        return NULL;
    }

    int const fd = open(path, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
    if (fd == -1) {
        fprintf(stderr, "error: could not open file: `%s`: %s\n", path, strerror(errno));
        return NULL;
    }

    struct io300_file *const ret = malloc(sizeof(*ret));
    if (ret == NULL) {
        fprintf(stderr, "error: could not allocate io300_file\n");
        return NULL;
    }

    ret->fd = fd;
    ret->cache = malloc(CACHE_SIZE);
    if (ret->cache == NULL) {
        fprintf(stderr, "error: could not allocate file cache\n");
        close(ret->fd);
        free(ret);
        return NULL;
    }
    ret->description = description;
    // TODO: Initialize your file

    
    ret->cache_start = 0;
    ret->cache_ind = 0;
    ret->file_offset = 0;


    ret->isModified = 0;
    ret->isCacheEmpty = 1;

    ret->file_size = 0;
    ret->file_size = io300_filesize(ret);
    
    ret->stats.read_calls = 0;
    ret->stats.write_calls = 0;
    ret->stats.seeks = 0;

    // read(ret->fd, ret->cache, CACHE_SIZE);
    // ret->stats.read_calls++;


    check_invariants(ret);
    dbg(ret, "Just finished initializing file from path: %s\n", path);
    return ret;
}

/*
    seek() repositions the file offset to the given value. This causes
    subsequent reads and writes to take place from the new offset.

    Upon successful completion, seek() returns the resulting offset location
    as measured in bytes from the beginning  of the file.  On error, the
    value (off_t)-1 is returned.
*/
int io300_seek(struct io300_file *const f, off_t const pos) {
    check_invariants(f);
    f->stats.seeks++;

    f->cache_ind = pos - f->cache_start;
    return pos;   
}

/*
    Close and cleanup the given io300_file. Remember that when a file is
    closed, you need to write any cached data that resides in RAM to disk.
    This probably means calling flush().

    Return 0 on success, -1 on failure.
*/
int io300_close(struct io300_file *const f) {
    check_invariants(f);

#if(DEBUG_STATISTICS == 1)
    printf("stats: {desc: %s, read_calls: %d, write_calls: %d, seeks: %d}\n",
            f->description, f->stats.read_calls, f->stats.write_calls, f->stats.seeks);
#endif

    // TODO: Implement this
    io300_flush(f);
    int const ret = close(f->fd);
    free(f->cache);
    free(f);
    return ret;
}


off_t io300_filesize(struct io300_file *const f) {
    check_invariants(f);
    struct stat s;
    int const r = fstat(f->fd, &s);
    if (r >= 0 && S_ISREG(s.st_mode)) {
        return s.st_size;
    } else {
        return -1;
    }
}


/*
    readc() reads a single byte from the file and returns it.
    Return -1 on failure or if the end of the file has been reached.
*/
int io300_readc(struct io300_file *const f) {
    check_invariants(f);
    
    unsigned char c;

    if (f->cache_ind >= CACHE_SIZE || f->cache_ind < f->cache_start) {
        printf("File size : %ld\n", f->file_size);
        printf("cache_ind (before): %ld\n", f->cache_ind);
        printf("cache_start (before): %ld\n", f->cache_start);
        printf("file_offset (before): %ld\n", f->file_offset);
        printf("cache_size: %d\n", CACHE_SIZE);

        io300_flush(f);

        // Compute the new cache_start position based on the current file_offset.
        f->cache_start = f->file_offset + f->cache_ind;

        // Seek to the new cache_start position in the file.
        lseek(f->fd, f->cache_start, SEEK_SET);

        // Refill the cache starting at the new cache_start position.
        pread(f->fd, f->cache, CACHE_SIZE, f->file_offset);
        f->stats.read_calls++;

        // Update the cache_ind and file_offset fields to reflect the new state.
        f->cache_ind = 0;
        f->file_offset = f->cache_start;
    }

    c = f->cache[f->cache_ind];
    f->cache_ind++;
    return c; 
}


/*
    writec() writes a single byte to the file.
    Return the byte that was written upon success and -1 on failure.
*/
int io300_writec(struct io300_file *f, int ch) {
    check_invariants(f);
    
    // Naive Implementation
    char const c = (char)ch;
    return write(f->fd, &c, 1) == 1 ? ch : -1;
}

/*
    Read `nbytes` from the file into `buff`. Assume that the buffer is large enough.
    On failure, return -1. On success, return the number of bytes that were
    placed into the provided buffer.
*/
ssize_t io300_read(struct io300_file *const f, char *const buff, size_t const sz) {
    check_invariants(f);

    // TODO: Implement this

    return read(f->fd, buff, sz);
}


/*
    Write `nbytes` from the start of `buff` into the file. Assume that the buffer
    is large enough.
    On failure, return -1. On success, return the number of bytes that were
    written to the file.
*/
ssize_t io300_write(struct io300_file *const f, const char *buff, size_t const sz) {
    check_invariants(f);
    // TODO: Implement this

    return write(f->fd, buff, sz);
}


/*
    Flush any in-RAM data (caches) to disk.
*/
int io300_flush(struct io300_file *const f) {
    check_invariants(f);
    // TODO: Implement this
    
    //Implement flushing, and using the write() system call for this seems like 
    //a good plan!

    //Note that you'll need to set the read-write head in the file appropriately
    // to write to the right place when you flush your cache. What syscall might
    // help you move the read/write head?

    if (f->isModified == 1) {
        lseek(f->fd, f->cache_ind, SEEK_SET);
        //Cases: Cache read, Cache is not full
        ssize_t nbytes = io300_write(f->fd, f->cache, CACHE_SIZE);
        if (nbytes == -1) {
            return -1;
        }
    }


    return 0;


    // // This is a nop because we are not caching any data, so we can close
    // // the file at any time without worrying.
    // (void)f;
    // return 0;
}

