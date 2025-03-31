#include "gdt.h"


void terminal_write(const char* str);

void kernel_main() {
    init_gdt();
    terminal_write("Hello World from myOS!");
}

void _start() {
    kernel_main();
    while (1);
}
