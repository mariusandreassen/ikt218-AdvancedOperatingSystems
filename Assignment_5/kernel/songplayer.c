#include "songplayer.h"
#include "terminal.h"
#include "pit.h"
#include "port_io.h"
#include "notes.h"


void enable_speaker() {
    // Optional: Implement PC speaker activation
}

void disable_speaker() {
    // Optional: Implement PC speaker off
}

void play_sound(uint32_t freq) {
    // Optional: Use PIT to produce sound
}

void stop_sound() {
    // Optional: Stop PC speaker sound
}

void play_song_impl(Song* song) {
    terminal_write("Starting song...\n");

    for (uint32_t i = 0; i < song->note_count; ++i) {
        Note note = song->notes[i];

        // 🧠 Manual string output without snprintf
        terminal_write("Note ");
        terminal_write(" -> freq=");
        // You can implement a simple integer to string converter if you want more info
        terminal_write("...Hz, duration=...ms\n");

        play_sound(note.freq);
        pit_sleep(note.duration); // ✅ make sure note.duration exists as uint32_t
        stop_sound();
    }

    terminal_write("Finished song.\n");
}

SongPlayer* create_song_player() {
    static SongPlayer player;
    player.play_song = play_song_impl;
    return &player;
}
