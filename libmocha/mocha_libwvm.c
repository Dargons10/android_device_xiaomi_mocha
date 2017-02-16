#include <stddef.h>
#include <stdint.h>

extern void _ZN7android12MemoryDealerC2EjPKcj(void* obj, size_t size, const char* name, uint32_t flags);
void _ZN7android12MemoryDealerC1EjPKc(void* obj, size_t size, const char* name) {
    _ZN7android12MemoryDealerC2EjPKcj(obj, size, name, 0);
}