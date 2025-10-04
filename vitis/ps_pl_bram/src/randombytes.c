/*
Vitis-compatible implementation of randombytes function
This provides a simple random number generator for embedded systems
*/

#include <stdio.h>
#include <stdlib.h>
#include "randombytes.h"

// Simple PRNG state
static unsigned long seed = 1;

// Simple Linear Congruential Generator (LCG)
static unsigned long simple_rand(void) {
    seed = seed * 1103515245 + 12345;
    return seed;
}

void randombytes(unsigned char *x, unsigned long long xlen)
{

    // Initialize seed if not already done
    if (seed == 1) {
        // Use a simple method to get some entropy
        // In a real implementation, you might use hardware RNG or timer
        seed = 0x12345678;
    }
    
    for (unsigned long long i = 0; i < xlen; i++) {
        x[i] = (unsigned char)(simple_rand() & 0xFF);
    }
}
