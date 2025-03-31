#include <stdint.h>

volatile uint16_t* video_memory = (uint16_t*) 0xB8000;
uint8_t cursor_x = 0;
uint8_t cursor_y = 0;
const int VGA_WIDTH = 80;

void terminal_putchar(char c) {
    const uint8_t attribute = 0x07;
    uint16_t value = (attribute << 8) | c;
    video_memory[cursor_y * VGA_WIDTH + cursor_x] = value;
    cursor_x++;
    if (cursor_x >= VGA_WIDTH) {
        cursor_x = 0;
        cursor_y++;
    }
}

void terminal_write(const char* str) {
    while (*str) {
        terminal_putchar(*str++);
    }
}
