BUILD_DIR = build
ISO_DIR = iso
PROJECT_NAME = Assignment_2

$(shell mkdir -p $(BUILD_DIR))
$(shell mkdir -p $(ISO_DIR)/boot/grub)

all: $(BUILD_DIR)/$(PROJECT_NAME).bin

$(BUILD_DIR)/$(PROJECT_NAME).bin: $(BUILD_DIR)/kernel.o $(BUILD_DIR)/gdt.o $(BUILD_DIR)/gdt_flush.o $(BUILD_DIR)/terminal.o
	ld -m elf_i386 -T linker.ld -o $@ $^

$(BUILD_DIR)/%.o: kernel/%.c
	gcc -m32 -ffreestanding -c $< -o $@

$(BUILD_DIR)/gdt_flush.o: kernel/gdt_flush.asm
	nasm -f elf32 $< -o $@

iso: all
	cp $(BUILD_DIR)/$(PROJECT_NAME).bin $(ISO_DIR)/boot/
	cp boot/grub/grub.cfg $(ISO_DIR)/boot/grub/
	grub-mkrescue -o $(BUILD_DIR)/$(PROJECT_NAME).iso $(ISO_DIR)

run: iso
	qemu-system-i386 -cdrom $(BUILD_DIR)/$(PROJECT_NAME).iso -boot d -no-reboot -no-shutdown

clean:
	rm -rf $(BUILD_DIR)/*.o $(BUILD_DIR)/*.bin $(BUILD_DIR)/*.iso
