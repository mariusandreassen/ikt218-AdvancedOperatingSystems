#include "gdt.h"

__attribute__((section(".multiboot")))
const unsigned int multiboot_header[] = {
        0x1BADB002,     // magic number
        0x00,           // flags
        -(0x1BADB002)   // checksum (magic + flags + checksum == 0)
};

void terminal_write(const char* str);

void kernel_main() {
    init_gdt();
    terminal_write("Hello World from myOS!");
}

void _start() {
    kernel_main();
    while (1);
}
