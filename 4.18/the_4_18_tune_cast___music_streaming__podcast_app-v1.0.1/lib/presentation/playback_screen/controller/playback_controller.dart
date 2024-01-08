import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/playback_screen/models/playback_model.dart';/// A controller class for the PlaybackScreen.
///
/// This class manages the state of the PlaybackScreen, including the
/// current playbackModelObj
class PlaybackController extends GetxController {Rx<PlaybackModel> playbackModelObj = PlaybackModel().obs;

 }
