#include "pit.h"
#include "port_io.h"

#define PIT_CHANNEL_0 0x40
#define PIT_COMMAND   0x43
#define PIT_FREQUENCY 1193182

void pit_sleep(uint32_t ms) {
    uint32_t ticks = ms * (PIT_FREQUENCY / 1000);

    // Setup PIT mode
    outb(PIT_COMMAND, 0x34);
    outb(PIT_CHANNEL_0, ticks & 0xFF);         // low byte
    outb(PIT_CHANNEL_0, (ticks >> 8) & 0xFF);  // high byte

    for (volatile uint32_t i = 0; i < ticks * 10; ++i) {
        __asm__ __volatile__("nop");
    }
}
