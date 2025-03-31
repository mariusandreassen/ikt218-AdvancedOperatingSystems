#ifndef SONG_H
#define SONG_H

#include <stdint.h>

typedef struct {
    uint32_t freq;
    uint32_t duration;// Frequency in Hz
} Note;

typedef struct {
    Note* notes;
    uint32_t note_count;
} Song;

#endif // SONG_H
