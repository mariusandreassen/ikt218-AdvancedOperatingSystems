ENTRY(_start)

SECTIONS
{
    . = 0x100000;

    .text :
    {
        *(.multiboot)   /* Multiboot header must be in the first 8KB */
        *(.text*)
    }

    .rodata : { *(.rodata*) }
    .data   : { *(.data*) }
    .bss    : { *(.bss*) }
}