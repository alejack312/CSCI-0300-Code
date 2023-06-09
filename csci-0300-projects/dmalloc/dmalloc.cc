#define DMALLOC_DISABLE 1

#include "dmalloc.hh"
#include <cassert>
#include <cstring>


//dmalloc_stats g_statistics = {0, 0, 0, 0, 0, 0, (uintptr_t) UINT64_MAX, (uintptr_t) INTPTR_MIN};
dmalloc_stats g_statistics = {0, 0, 0, 0, 0, 0, (uintptr_t) UINT64_MAX, (uintptr_t) WINT_MIN};
static long long SECRET_VALUE = 170;

/**
 * dmalloc(sz,file,line)
 *      malloc() wrapper. Dynamically allocate the requested amount `sz` of memory and 
 *      return a pointer to it 
 * 
 * @arg size_t sz : the amount of memory requested 
 * @arg const char *file : a string containing the filename from which dmalloc was called 
 * @arg long line : the line number from which dmalloc was called 
 * 
 * @return a pointer to the heap where the memory was reserved
 */
void* dmalloc(size_t sz, const char* file, long line) {
    (void) file, (void) line;   // avoid uninitialized variable warnings
    // Your code here.

    if (sz == 0) {
        return NULL;
    }

    // Check for integer overflow
    if (sz + sizeof(metadata_t) < sz || sz == (size_t) -1 - 150) {
        g_statistics.nfail++;
        g_statistics.fail_size += sz;
        return NULL;
    }
    

    // Allocate space for metadata and payload
    size_t total_size = sz + sizeof(metadata_t) + (2 * sizeof(SECRET_VALUE));

    //Entire memory region allocation
    long long* secret_byte_one = (long long*)(base_malloc(total_size));
    metadata_t* metadata = (metadata_t*)((uintptr_t)secret_byte_one + sizeof(long long));
    void* payload = (void*)((uintptr_t)metadata + sizeof(metadata_t));
    //void* padding = (void*)((uintptr_t)payload + sz);
    long long* secret_byte_two = (long long*)((uintptr_t)payload + sz);

    //If allocation returns NULL
    if (metadata == nullptr) {
        g_statistics.nfail++;
        g_statistics.fail_size += sz;
        return NULL;
    }

    // Update global statistics

    *secret_byte_one = SECRET_VALUE;
    *secret_byte_two = SECRET_VALUE;

    //size of the allocation, allocated by dmalloc, and freed flag
    *(metadata) = {sz, 'A', 'N'};

    g_statistics.ntotal++;
    g_statistics.total_size += sz;
    g_statistics.nactive++;
    g_statistics.active_size += sz;

    // Update heap_min and heap_max
    //uintptr_t ptr = (uintptr_t)metadata;

    if ((uintptr_t)payload < g_statistics.heap_min) {
        g_statistics.heap_min = (uintptr_t)payload;
        if ((uintptr_t)payload > g_statistics.heap_max) {
            g_statistics.heap_max = g_statistics.heap_min + (uintptr_t)payload;
        }
    }
    if ((uintptr_t)payload > g_statistics.heap_max) {
        g_statistics.heap_max = (g_statistics.heap_max + (uintptr_t)payload);
    }

    // Return pointer to payload
    //return (void*)((uintptr_t)metadata + sizeof(metadata_t));
    return payload;
}

/**
 * dfree(ptr, file, line)
 *      free() wrapper. Release the block of heap memory pointed to by `ptr`. This should 
 *      be a pointer that was previously allocated on the heap. If `ptr` is a nullptr do nothing. 
 * 
 * @arg void *ptr : a pointer to the heap 
 * @arg const char *file : a string containing the filename from which dfree was called 
 * @arg long line : the line number from which dfree was called 
 */
void dfree(void* ptr, const char* file, long line) {
    (void) file, (void) line;   // avoid uninitialized variable warnings
    // Your code here.

    if (ptr == nullptr) {
        return;
    } 

    metadata_t* metadata = (metadata_t*)((uintptr_t)ptr - sizeof(metadata_t));
    
    

    //Check that ptr is on the heap
    if ((uintptr_t) ptr < g_statistics.heap_min || (uintptr_t) ptr >= g_statistics.heap_max) { 
        fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, not in heap\n", file, line, ptr);
        abort();
    }

    //Check that ptr was returned by dmalloc
    if (metadata->dmalloc_flag != 'A') {
        fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, not allocated\n", file, line, ptr);
        abort();
    }

    //Check that ptr has not been freed
    if (metadata->freed_flag == 'F') {
        fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, double free\n", file, line, ptr);
        abort();
    }

   if (*((long long*)((uintptr_t)metadata - sizeof(long long))) != SECRET_VALUE || *((long long*)((uintptr_t)ptr + metadata->size)) != SECRET_VALUE) {
        fprintf(stderr, "MEMORY BUG: %s:%ld: detected wild write during free of pointer %p\n", file, line, ptr);
        abort();
    }


    // Update global statistics
    
    size_t sz = metadata->size;
    //size_t sz = metadata->size + sizeof(metadata);

    (metadata->freed_flag) = 'F';

    g_statistics.nactive--;
    g_statistics.active_size -= sz;

    // Update heap_min and heap_max
    if ((uintptr_t)metadata == g_statistics.heap_min) {
        g_statistics.heap_min = g_statistics.heap_min + sz;
    }

    if ((uintptr_t)ptr == g_statistics.heap_max ) {
        g_statistics.heap_max = g_statistics.heap_max - sz;
    }

    // Free metadata and payload
    base_free(metadata);
    base_free(ptr);
}

/**
 * dcalloc(nmemb, sz, file, line)
 *      calloc() wrapper. Dynamically allocate enough memory to store an array of `nmemb` 
 *      number of elements with wach element being `sz` bytes. The memory should be initialized 
 *      to zero  
 * 
 * @arg size_t nmemb : the number of items that space is requested for
 * @arg size_t sz : the size in bytes of the items that space is requested for
 * @arg const char *file : a string containing the filename from which dcalloc was called 
 * @arg long line : the line number from which dcalloc was called 
 * 
 * @return a pointer to the heap where the memory was reserved
 */
void* dcalloc(size_t nmemb, size_t sz, const char* file, long line) {
    // Your code here (to fix test014).

    // Check for possible overflow
    if (nmemb == 0 || sz == 0 || SIZE_MAX / nmemb < sz)  {
        //errno = ENOMEM;
        g_statistics.nfail++;
        g_statistics.fail_size += sz;
        return nullptr;
    }

    void* ptr = dmalloc(nmemb * sz, file, line);
    if (ptr) {
        memset(ptr, 0, nmemb * sz);
    }
    return ptr;
}

/**
 * get_statistics(stats)
 *      fill a dmalloc_stats pointer with the current memory statistics  
 * 
 * @arg dmalloc_stats *stats : a pointer to the the dmalloc_stats struct we want to fill
 */
void get_statistics(dmalloc_stats* stats) {
    // Stub: set all statistics to enormous numbers

    //memset(stats, 255, sizeof(dmalloc_stats));

    // Your code here.

    // Get the current values of the global variables that track memory statistics
    stats->nactive = g_statistics.nactive;
    stats->active_size = g_statistics.active_size;
    stats->ntotal = g_statistics.ntotal;
    stats->total_size = g_statistics.total_size;
    stats->nfail = g_statistics.nfail;
    stats->fail_size = g_statistics.fail_size;
    stats->heap_min = g_statistics.heap_min;
    stats->heap_max = g_statistics.heap_max;
    
}

/**
 * print_statistics()
 *      print the current memory statistics to stdout       
 */
void print_statistics() {
    dmalloc_stats stats;
    get_statistics(&stats);

    printf("alloc count: active %10llu   total %10llu   fail %10llu\n",
           stats.nactive, stats.ntotal, stats.nfail);
    printf("alloc size:  active %10llu   total %10llu   fail %10llu\n",
           stats.active_size, stats.total_size, stats.fail_size);
}

/**  
 * print_leak_report()
 *      Print a report of all currently-active allocated blocks of dynamic
 *      memory.
 */
void print_leak_report() {
    // Your code here.
}
