var Player = function() {}
var Song   = function() {}

Player.prototype = {
  currentlyPlayingSong: null,
  currentlyPausedSong: null,
  play: function(song) { this.currentlyPlayingSong = song },
  pause: function() {
    this.isPlaying = false
    this.currentlyPausedSong  = this.currentlyPlayingSong
    this.currentlyPlayingSong = null
  },
  resume: function() {
    if (this.currentlyPausedSong) {
      this.isPlaying = true
      this.currentlyPlayingSong = this.currentlyPausedSong
      this.currentlyPausedSong  = null
    } else {
      throw 'song is already playing'
    }
  },
  isPlaying: null,
  makeFavorite: function() { this.currentlyPlayingSong.persistFavoriteStatus(true) }
}

Song.prototype = {
  persistFavoriteStatus: function(stat) {}
}
