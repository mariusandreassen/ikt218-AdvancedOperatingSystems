#include <stdint.h>
#include "terminal.h"

static uint16_t* video_memory = (uint16_t*) 0xB8000;
static int row = 0;
static int col = 0;

static uint16_t make_vga_entry(char c, uint8_t color) {
    return (uint16_t)c | ((uint16_t)color << 8);
}

void terminal_initialize() {
    for (int i = 0; i < 80 * 25; i++) {
        video_memory[i] = make_vga_entry(' ', 0x07);
    }
    row = 0;
    col = 0;
}

void terminal_write(const char* str) {
    while (*str) {
        if (*str == '\n') {
            row++;
            col = 0;
        } else {
            video_memory[row * 80 + col] = make_vga_entry(*str, 0x07);
            col++;
            if (col >= 80) {
                col = 0;
                row++;
            }
        }
        str++;
    }
}
