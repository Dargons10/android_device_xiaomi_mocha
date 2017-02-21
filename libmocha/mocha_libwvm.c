#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <malloc.h>

extern void _ZN7android12MemoryDealerC2EjPKcj(void* obj, size_t size, const char* name, uint32_t flags);
void _ZN7android12MemoryDealerC1EjPKc(void* obj, size_t size, const char* name) {
    _ZN7android12MemoryDealerC2EjPKcj(obj, size, name, 0);
}

//status_t acquire_buffer(MediaBuffer **buffer, bool nonBlocking = false);
extern int _ZN7android16MediaBufferGroup14acquire_bufferEPPNS_11MediaBufferEb(void **buffer, bool nonBlocking);
int _ZN7android16MediaBufferGroup14acquire_bufferEPPNS_11MediaBufferE(void **buffer) {
    return _ZN7android16MediaBufferGroup14acquire_bufferEPPNS_11MediaBufferEb(buffer, false);
}



void *CRYPTO_malloc(int num, const char *file, int line) {
    return malloc(num);
}

void CRYPTO_free(void *str)
{
    free(str);
}

int RAND_egd(const char *path) {
  return 255;
}

const char *RAND_file_name(char *buf, size_t num) { return NULL; }