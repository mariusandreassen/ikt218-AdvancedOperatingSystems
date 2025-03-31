BUILD_DIR = build
ISO_DIR = iso
PROJECT_NAME = Assignment_5

$(shell mkdir -p $(BUILD_DIR))
$(shell mkdir -p $(ISO_DIR)/boot/grub)

C_SOURCES = \
    kernel/kernel.c \
    kernel/gdt.c \
    kernel/terminal.c \
    kernel/songplayer.c \
    kernel/notes.c \
    kernel/pit.c  # <-- added

ASM_SOURCES = \
    kernel/gdt_flush.asm

OBJS = $(patsubst kernel/%.c, $(BUILD_DIR)/%.o, $(C_SOURCES)) \
       $(patsubst kernel/%.asm, $(BUILD_DIR)/%.o, $(ASM_SOURCES))

all: $(BUILD_DIR)/$(PROJECT_NAME).bin

$(BUILD_DIR)/$(PROJECT_NAME).bin: $(OBJS)
	ld -m elf_i386 -T linker.ld -o $@ $^

$(BUILD_DIR)/%.o: kernel/%.c
	gcc -m32 -ffreestanding -c $< -o $@

$(BUILD_DIR)/%.o: kernel/%.asm
	nasm -f elf32 $< -o $@

iso: all
	cp $(BUILD_DIR)/$(PROJECT_NAME).bin $(ISO_DIR)/boot/
	cp -u grub.cfg $(ISO_DIR)/boot/grub/
	grub-mkrescue -o $(BUILD_DIR)/$(PROJECT_NAME).iso $(ISO_DIR)

run: iso
	qemu-system-i386 -cdrom $(BUILD_DIR)/$(PROJECT_NAME).iso -boot d -no-reboot -no-shutdown

clean:
	rm -rf $(BUILD_DIR)/*.o $(BUILD_DIR)/*.bin $(BUILD_DIR)/*.iso
