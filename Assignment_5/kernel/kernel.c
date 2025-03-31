#include "gdt.h"
#include "terminal.h"
#include "notes.h"
#include "songplayer.h"

__attribute__((section(".multiboot")))
const unsigned int multiboot_header[] = {
        0x1BADB002,
        0x00,
        -(0x1BADB002)
};
void kernel_main() {
    init_gdt();
    terminal_initialize();
    terminal_write("Booted Music Player!\n");

    Song song1 = { music_1, music_1_len };
    Song* songs[] = { &song1 };
    uint32_t n_songs = sizeof(songs) / sizeof(Song*);

    SongPlayer* player = create_song_player();

    while (1) {
        for (uint32_t i = 0; i < n_songs; i++) {
            terminal_write("Playing song...\n");
            player->play_song(songs[i]);
            terminal_write("Finished song.\n");
        }
    }
}

