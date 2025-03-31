BUILD_DIR = build
PROJECT_NAME = Assignment_2

$(shell mkdir -p $(BUILD_DIR))

all: $(BUILD_DIR)/$(PROJECT_NAME).bin

$(BUILD_DIR)/$(PROJECT_NAME).bin: $(BUILD_DIR)/kernel.o $(BUILD_DIR)/gdt.o $(BUILD_DIR)/gdt_flush.o $(BUILD_DIR)/terminal.o
	ld -m elf_i386 -T linker.ld -o $@ $^

$(BUILD_DIR)/%.o: kernel/%.c
	gcc -m32 -ffreestanding -c $< -o $@

$(BUILD_DIR)/gdt_flush.o: kernel/gdt_flush.asm
	nasm -f elf32 $< -o $@

run: all
	qemu-system-i386 -fda $(BUILD_DIR)/$(PROJECT_NAME).bin

clean:
	rm -rf $(BUILD_DIR)/*.o $(BUILD_DIR)/*.bin
