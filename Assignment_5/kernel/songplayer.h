#ifndef SONGPLAYER_H
#define SONGPLAYER_H

#include "song.h"

typedef struct {
    void (*play_song)(Song* song);
} SongPlayer;

SongPlayer* create_song_player();

#endif // SONGPLAYER_H
