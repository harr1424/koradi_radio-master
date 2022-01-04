import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerHandler extends BaseAudioHandler
    with SeekHandler, QueueHandler {
  // Declare MediaItem used for streaming
  static const _stream = MediaItem(
    id: 'http://pad20.com:8505/vivo',
    title: 'Koradi Radio Stream',
  );

  // Instantiate a just_audio AudioPlayer
  final _player = AudioPlayer();

  //Initialize audio handler
  AudioPlayerHandler() {
    // So that the Flutter UI and the system notification know
    // what state to display, here we set up our audio handler to broadcast all
    // playback state changes as they happen via playbackState...
    _player.playbackEventStream.map(_transformEvent).pipe(playbackState);
    // ... and also the current media item via mediaItem.
    mediaItem.add(_stream);
    // Load the player.
    _player.setAudioSource(AudioSource.uri(Uri.parse(_stream.id)));
  }

  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() => _player.pause();

  @override
  Future<void> stop() => _player.stop();

  @override
  Future<void> seek(Duration position) => _player.seek(position);

  @override
  Future<void> playMediaItem(MediaItem newItem) async {
    mediaItem.add(newItem);
    _player.setUrl(newItem.id);
  }

  /// Transform a just_audio event into an audio_service state.
  /// This method is used from the constructor. Every event received from the
  /// just_audio player will be transformed into an audio_service state so that
  /// it can be broadcast to audio_service clients.
  PlaybackState _transformEvent(PlaybackEvent event) {
    return PlaybackState(
      controls: [
        if (_player.playing) MediaControl.pause else MediaControl.play,
        MediaControl.stop,
      ],
      androidCompactActionIndices: const [0, 1],
      processingState: const {
        ProcessingState.idle: AudioProcessingState.idle,
        ProcessingState.loading: AudioProcessingState.loading,
        ProcessingState.buffering: AudioProcessingState.buffering,
        ProcessingState.ready: AudioProcessingState.ready,
        ProcessingState.completed: AudioProcessingState.completed,
      }[_player.processingState]!,
      playing: _player.playing,
      updatePosition: _player.position,
      bufferedPosition: _player.bufferedPosition,
    );
  }
}
